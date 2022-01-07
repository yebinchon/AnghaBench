
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio_client {int stream_id; int adev; } ;
struct TYPE_2__ {int opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int APR_HDR_SIZE ;
 int ASM_DATA_CMD_EOS ;
 int ASM_SESSION_CMD_PAUSE ;
 int ASM_SESSION_CMD_SUSPEND ;
 int ASM_STREAM_CMD_CLOSE ;
 int ASM_STREAM_CMD_FLUSH ;
 int ASM_STREAM_CMD_FLUSH_READBUFS ;






 int EINVAL ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int q6asm_ac_send_cmd_sync (struct audio_client*,struct apr_pkt*) ;
 int q6asm_add_hdr (struct audio_client*,TYPE_1__*,int ,int,int) ;
 int q6asm_reset_buf_state (struct audio_client*) ;

__attribute__((used)) static int __q6asm_cmd(struct audio_client *ac, int cmd, bool wait)
{
 int stream_id = ac->stream_id;
 struct apr_pkt pkt;
 int rc;

 q6asm_add_hdr(ac, &pkt.hdr, APR_HDR_SIZE, 1, stream_id);

 switch (cmd) {
 case 129:
  pkt.hdr.opcode = ASM_SESSION_CMD_PAUSE;
  break;
 case 128:
  pkt.hdr.opcode = ASM_SESSION_CMD_SUSPEND;
  break;
 case 131:
  pkt.hdr.opcode = ASM_STREAM_CMD_FLUSH;
  break;
 case 130:
  pkt.hdr.opcode = ASM_STREAM_CMD_FLUSH_READBUFS;
  break;
 case 132:
  pkt.hdr.opcode = ASM_DATA_CMD_EOS;
  break;
 case 133:
  pkt.hdr.opcode = ASM_STREAM_CMD_CLOSE;
  break;
 default:
  return -EINVAL;
 }

 if (wait)
  rc = q6asm_ac_send_cmd_sync(ac, &pkt);
 else
  return apr_send_pkt(ac->adev, &pkt);

 if (rc < 0)
  return rc;

 if (cmd == 131)
  q6asm_reset_buf_state(ac);

 return 0;
}
