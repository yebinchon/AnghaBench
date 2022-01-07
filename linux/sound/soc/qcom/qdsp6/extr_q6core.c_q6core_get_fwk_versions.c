
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct q6core {int resp_received; int fwk_version_supported; int wait; struct apr_device* adev; } ;
struct TYPE_2__ {int opcode; int pkt_size; int hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
struct apr_device {int dummy; } ;


 int APR_HDR_FIELD (int ,int ,int ) ;
 int APR_HDR_LEN (int ) ;
 int APR_HDR_SIZE ;
 int APR_MSG_TYPE_SEQ_CMD ;
 int APR_PKT_VER ;
 int AVCS_CMD_GET_FWK_VERSION ;
 int ENOTSUPP ;
 int Q6_READY_TIMEOUT_MS ;
 int apr_send_pkt (struct apr_device*,struct apr_pkt*) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int q6core_get_fwk_versions(struct q6core *core)
{
 struct apr_device *adev = core->adev;
 struct apr_pkt pkt;
 int rc;

 pkt.hdr.hdr_field = APR_HDR_FIELD(APR_MSG_TYPE_SEQ_CMD,
          APR_HDR_LEN(APR_HDR_SIZE), APR_PKT_VER);
 pkt.hdr.pkt_size = APR_HDR_SIZE;
 pkt.hdr.opcode = AVCS_CMD_GET_FWK_VERSION;

 rc = apr_send_pkt(adev, &pkt);
 if (rc < 0)
  return rc;

 rc = wait_event_timeout(core->wait, (core->resp_received),
    msecs_to_jiffies(Q6_READY_TIMEOUT_MS));
 if (rc > 0 && core->resp_received) {
  core->resp_received = 0;

  if (!core->fwk_version_supported)
   return -ENOTSUPP;
  else
   return 0;
 }


 return rc;
}
