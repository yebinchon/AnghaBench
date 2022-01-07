
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct q6asm {int dev; int mem_wait; int adev; } ;
struct TYPE_2__ {scalar_t__ opcode; scalar_t__ status; } ;
struct audio_client {int cmd_lock; TYPE_1__ result; } ;
struct apr_hdr {scalar_t__ opcode; } ;
struct apr_pkt {struct apr_hdr hdr; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int q6asm_apr_send_session_pkt(struct q6asm *a, struct audio_client *ac,
          struct apr_pkt *pkt, uint32_t rsp_opcode)
{
 struct apr_hdr *hdr = &pkt->hdr;
 int rc;

 mutex_lock(&ac->cmd_lock);
 ac->result.opcode = 0;
 ac->result.status = 0;
 rc = apr_send_pkt(a->adev, pkt);
 if (rc < 0)
  goto err;

 if (rsp_opcode)
  rc = wait_event_timeout(a->mem_wait,
     (ac->result.opcode == hdr->opcode) ||
     (ac->result.opcode == rsp_opcode),
     5 * HZ);
 else
  rc = wait_event_timeout(a->mem_wait,
     (ac->result.opcode == hdr->opcode),
     5 * HZ);

 if (!rc) {
  dev_err(a->dev, "CMD timeout\n");
  rc = -ETIMEDOUT;
 } else if (ac->result.status > 0) {
  dev_err(a->dev, "DSP returned error[%x]\n",
   ac->result.status);
  rc = -EINVAL;
 }

err:
 mutex_unlock(&ac->cmd_lock);
 return rc;
}
