
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6core {int get_version_supported; int resp_received; int fwk_version_supported; int get_state_supported; int wait; int avcs_state; void* svc_version; void* fwk_version; } ;
struct avcs_cmdrsp_get_version {int opcode; int num_services; int status; } ;
struct avcs_cmdrsp_get_fwk_version {int opcode; int num_services; int status; } ;
struct aprv2_ibasic_rsp_result_t {int opcode; int num_services; int status; } ;
struct apr_hdr {int opcode; } ;
struct apr_resp_pkt {struct avcs_cmdrsp_get_version* payload; struct apr_hdr hdr; } ;
struct apr_device {int dev; } ;


 int ADSP_EUNSUPPORTED ;







 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_err (int *,char*,int) ;
 struct q6core* dev_get_drvdata (int *) ;
 void* kmemdup (struct avcs_cmdrsp_get_version*,int ,int ) ;
 int struct_size (struct avcs_cmdrsp_get_version*,int ,int ) ;
 int svc_api_info ;
 int wake_up (int *) ;

__attribute__((used)) static int q6core_callback(struct apr_device *adev, struct apr_resp_pkt *data)
{
 struct q6core *core = dev_get_drvdata(&adev->dev);
 struct aprv2_ibasic_rsp_result_t *result;
 struct apr_hdr *hdr = &data->hdr;

 result = data->payload;
 switch (hdr->opcode) {
 case 134:{
  result = data->payload;
  switch (result->opcode) {
  case 129:
   if (result->status == ADSP_EUNSUPPORTED)
    core->get_version_supported = 0;
   core->resp_received = 1;
   break;
  case 130:
   if (result->status == ADSP_EUNSUPPORTED)
    core->fwk_version_supported = 0;
   core->resp_received = 1;
   break;
  case 131:
   if (result->status == ADSP_EUNSUPPORTED)
    core->get_state_supported = 0;
   core->resp_received = 1;
   break;
  }
  break;
 }
 case 132: {
  struct avcs_cmdrsp_get_fwk_version *fwk;

  fwk = data->payload;

  core->fwk_version = kmemdup(data->payload,
         struct_size(fwk, svc_api_info,
       fwk->num_services),
         GFP_ATOMIC);
  if (!core->fwk_version)
   return -ENOMEM;

  core->fwk_version_supported = 1;
  core->resp_received = 1;

  break;
 }
 case 128: {
  struct avcs_cmdrsp_get_version *v;

  v = data->payload;

  core->svc_version = kmemdup(data->payload,
         struct_size(v, svc_api_info,
       v->num_services),
         GFP_ATOMIC);
  if (!core->svc_version)
   return -ENOMEM;

  core->get_version_supported = 1;
  core->resp_received = 1;

  break;
 }
 case 133:
  core->get_state_supported = 1;
  core->avcs_state = result->opcode;

  core->resp_received = 1;
  break;
 default:
  dev_err(&adev->dev, "Message id from adsp core svc: 0x%x\n",
   hdr->opcode);
  break;
 }

 if (core->resp_received)
  wake_up(&core->wait);

 return 0;
}
