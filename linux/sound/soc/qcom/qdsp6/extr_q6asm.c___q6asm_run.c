
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct audio_client {int adev; int stream_id; } ;
struct asm_session_cmd_run_v2 {void* time_msw; void* time_lsw; void* flags; } ;
struct TYPE_2__ {int opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int APR_HDR_SIZE ;
 int ASM_SESSION_CMD_RUN_V2 ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int q6asm_ac_send_cmd_sync (struct audio_client*,struct apr_pkt*) ;
 int q6asm_add_hdr (struct audio_client*,TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int __q6asm_run(struct audio_client *ac, uint32_t flags,
       uint32_t msw_ts, uint32_t lsw_ts, bool wait)
{
 struct asm_session_cmd_run_v2 *run;
 struct apr_pkt *pkt;
 int pkt_size, rc;
 void *p;

 pkt_size = APR_HDR_SIZE + sizeof(*run);
 p = kzalloc(pkt_size, GFP_ATOMIC);
 if (!p)
  return -ENOMEM;

 pkt = p;
 run = p + APR_HDR_SIZE;

 q6asm_add_hdr(ac, &pkt->hdr, pkt_size, 1, ac->stream_id);

 pkt->hdr.opcode = ASM_SESSION_CMD_RUN_V2;
 run->flags = flags;
 run->time_lsw = lsw_ts;
 run->time_msw = msw_ts;
 if (wait) {
  rc = q6asm_ac_send_cmd_sync(ac, pkt);
 } else {
  rc = apr_send_pkt(ac->adev, pkt);
  if (rc == pkt_size)
   rc = 0;
 }

 kfree(pkt);
 return rc;
}
