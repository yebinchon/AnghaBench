
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aprv2_ibasic_rsp_result_t {int opcode; int status; } ;
struct q6afe_port {int refcount; int wait; struct aprv2_ibasic_rsp_result_t result; } ;
struct q6afe {int dev; } ;
struct apr_hdr {int opcode; int token; } ;
struct apr_resp_pkt {struct aprv2_ibasic_rsp_result_t* payload; int payload_size; struct apr_hdr hdr; } ;
struct apr_device {int dev; } ;







 int dev_err (int ,char*,int ,...) ;
 struct q6afe* dev_get_drvdata (int *) ;
 int kref_put (int *,int ) ;
 struct q6afe_port* q6afe_find_port (struct q6afe*,int ) ;
 int q6afe_port_free ;
 int wake_up (int *) ;

__attribute__((used)) static int q6afe_callback(struct apr_device *adev, struct apr_resp_pkt *data)
{
 struct q6afe *afe = dev_get_drvdata(&adev->dev);
 struct aprv2_ibasic_rsp_result_t *res;
 struct apr_hdr *hdr = &data->hdr;
 struct q6afe_port *port;

 if (!data->payload_size)
  return 0;

 res = data->payload;
 switch (hdr->opcode) {
 case 128: {
  if (res->status) {
   dev_err(afe->dev, "cmd = 0x%x returned error = 0x%x\n",
    res->opcode, res->status);
  }
  switch (res->opcode) {
  case 130:
  case 131:
  case 132:
  case 129:
   port = q6afe_find_port(afe, hdr->token);
   if (port) {
    port->result = *res;
    wake_up(&port->wait);
    kref_put(&port->refcount, q6afe_port_free);
   }
   break;
  default:
   dev_err(afe->dev, "Unknown cmd 0x%x\n", res->opcode);
   break;
  }
 }
  break;
 default:
  break;
 }

 return 0;
}
