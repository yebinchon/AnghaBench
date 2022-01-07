
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct q6asm {int mem_wait; } ;
struct audio_port_data {int mem_map_handle; } ;
struct aprv2_ibasic_rsp_result_t {int opcode; int status; } ;
struct audio_client {int refcount; int priv; int (* cb ) (int,int,struct aprv2_ibasic_rsp_result_t*,int ) ;struct aprv2_ibasic_rsp_result_t result; struct audio_port_data* port; TYPE_1__* dev; } ;
struct apr_hdr {int dest_port; int token; int opcode; } ;
struct apr_resp_pkt {struct aprv2_ibasic_rsp_result_t* payload; struct apr_hdr hdr; } ;
struct apr_device {int dev; } ;
struct TYPE_2__ {int * parent; } ;






 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*,...) ;
 struct q6asm* dev_get_drvdata (int *) ;
 int kref_put (int *,int ) ;
 int q6asm_audio_client_release ;
 struct audio_client* q6asm_get_audio_client (struct q6asm*,size_t) ;
 int q6asm_stream_callback (struct apr_device*,struct apr_resp_pkt*,int) ;
 int stub1 (int,int,struct aprv2_ibasic_rsp_result_t*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int q6asm_srvc_callback(struct apr_device *adev,
          struct apr_resp_pkt *data)
{
 struct q6asm *q6asm = dev_get_drvdata(&adev->dev);
 struct aprv2_ibasic_rsp_result_t *result;
 struct audio_port_data *port;
 struct audio_client *ac = ((void*)0);
 struct apr_hdr *hdr = &data->hdr;
 struct q6asm *a;
 uint32_t sid = 0;
 uint32_t dir = 0;
 int session_id;

 session_id = (hdr->dest_port >> 8) & 0xFF;
 if (session_id)
  return q6asm_stream_callback(adev, data, session_id);

 sid = (hdr->token >> 8) & 0x0F;
 ac = q6asm_get_audio_client(q6asm, sid);
 if (!ac) {
  dev_err(&adev->dev, "Audio Client not active\n");
  return 0;
 }

 a = dev_get_drvdata(ac->dev->parent);
 dir = (hdr->token & 0x0F);
 port = &ac->port[dir];
 result = data->payload;

 switch (hdr->opcode) {
 case 131:
  switch (result->opcode) {
  case 129:
  case 128:
   ac->result = *result;
   wake_up(&a->mem_wait);
   break;
  default:
   dev_err(&adev->dev, "command[0x%x] not expecting rsp\n",
     result->opcode);
   break;
  }
  goto done;
 case 130:
  ac->result.status = 0;
  ac->result.opcode = hdr->opcode;
  port->mem_map_handle = result->opcode;
  wake_up(&a->mem_wait);
  break;
 case 128:
  ac->result.opcode = hdr->opcode;
  ac->result.status = 0;
  port->mem_map_handle = 0;
  wake_up(&a->mem_wait);
  break;
 default:
  dev_dbg(&adev->dev, "command[0x%x]success [0x%x]\n",
   result->opcode, result->status);
  break;
 }

 if (ac->cb)
  ac->cb(hdr->opcode, hdr->token, data->payload, ac->priv);

done:
 kref_put(&ac->refcount, q6asm_audio_client_release);

 return 0;
}
