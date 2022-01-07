
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct xdr_netobj {TYPE_11__* data; int * member_1; int member_0; int len; } ;
struct svc_cred {void* cr_targ_princ; void* cr_principal; void* cr_raw_principal; } ;
struct rpc_message {int * rpc_cred; struct gssx_res_accept_sec_context* rpc_resp; struct gssx_arg_accept_sec_context* rpc_argp; int * rpc_proc; } ;
struct net {int dummy; } ;
struct TYPE_23__ {int count; TYPE_11__* data; } ;
struct TYPE_17__ {int minor_status; int major_status; } ;
struct gssx_res_accept_sec_context {TYPE_9__ options; struct gssx_ctx* context_handle; TYPE_3__ status; TYPE_2__* output_token; } ;
struct TYPE_22__ {struct xdr_netobj display_name; } ;
struct TYPE_21__ {struct xdr_netobj display_name; } ;
struct TYPE_20__ {TYPE_11__* data; int len; } ;
struct TYPE_18__ {int len; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct gssx_ctx {TYPE_8__ targ_name; TYPE_7__ src_name; TYPE_6__ mech; TYPE_4__ exported_context_token; TYPE_1__ state; } ;
struct gssx_arg_accept_sec_context {struct gssx_ctx* context_handle; int input_token; } ;
struct TYPE_19__ {int len; int data; } ;
struct TYPE_16__ {int len; } ;
struct gssp_upcall_data {int found_creds; struct svc_cred creds; TYPE_5__ mech_oid; TYPE_4__ out_handle; int minor_status; int major_status; TYPE_1__ in_handle; TYPE_2__ out_token; int in_token; } ;
struct TYPE_13__ {int len; TYPE_11__* data; } ;
typedef TYPE_10__ gssx_buffer ;
struct TYPE_14__ {TYPE_10__ value; } ;


 size_t GSSX_ACCEPT_SEC_CONTEXT ;
 int GSSX_max_output_handle_sz ;
 int GSSX_max_output_token_sz ;
 int GSSX_max_princ_sz ;
 int GSS_OID_MAX_LEN ;
 int gssp_alloc_receive_pages (struct gssx_arg_accept_sec_context*) ;
 int gssp_call (struct net*,struct rpc_message*) ;
 int gssp_free_receive_pages (struct gssx_arg_accept_sec_context*) ;
 int gssp_hostbased_service (void**) ;
 int * gssp_procedures ;
 void* gssp_stringify (struct xdr_netobj*) ;
 int kfree (TYPE_11__*) ;
 int memcpy (int ,TYPE_11__*,int ) ;

int gssp_accept_sec_context_upcall(struct net *net,
    struct gssp_upcall_data *data)
{
 struct gssx_ctx ctxh = {
  .state = data->in_handle
 };
 struct gssx_arg_accept_sec_context arg = {
  .input_token = data->in_token,
 };
 struct gssx_ctx rctxh = {




  .exported_context_token.len = GSSX_max_output_handle_sz,
  .mech.len = GSS_OID_MAX_LEN,
  .targ_name.display_name.len = GSSX_max_princ_sz,
  .src_name.display_name.len = GSSX_max_princ_sz
 };
 struct gssx_res_accept_sec_context res = {
  .context_handle = &rctxh,
  .output_token = &data->out_token
 };
 struct rpc_message msg = {
  .rpc_proc = &gssp_procedures[GSSX_ACCEPT_SEC_CONTEXT],
  .rpc_argp = &arg,
  .rpc_resp = &res,
  .rpc_cred = ((void*)0),
 };
 struct xdr_netobj client_name = { 0 , ((void*)0) };
 struct xdr_netobj target_name = { 0, ((void*)0) };
 int ret;

 if (data->in_handle.len != 0)
  arg.context_handle = &ctxh;
 res.output_token->len = GSSX_max_output_token_sz;

 ret = gssp_alloc_receive_pages(&arg);
 if (ret)
  return ret;

 ret = gssp_call(net, &msg);

 gssp_free_receive_pages(&arg);



 data->major_status = res.status.major_status;
 data->minor_status = res.status.minor_status;
 if (res.context_handle) {
  data->out_handle = rctxh.exported_context_token;
  data->mech_oid.len = rctxh.mech.len;
  if (rctxh.mech.data) {
   memcpy(data->mech_oid.data, rctxh.mech.data,
      data->mech_oid.len);
   kfree(rctxh.mech.data);
  }
  client_name = rctxh.src_name.display_name;
  target_name = rctxh.targ_name.display_name;
 }

 if (res.options.count == 1) {
  gssx_buffer *value = &res.options.data[0].value;



  if (value->len == 1) {

   data->creds = *(struct svc_cred *)value->data;
   data->found_creds = 1;
  }

  kfree(value->data);
 }

 if (res.options.count != 0) {
  kfree(res.options.data);
 }


 if (data->found_creds) {
  if (client_name.data) {
   data->creds.cr_raw_principal =
     gssp_stringify(&client_name);
   data->creds.cr_principal =
     gssp_stringify(&client_name);
   gssp_hostbased_service(&data->creds.cr_principal);
  }
  if (target_name.data) {
   data->creds.cr_targ_princ =
     gssp_stringify(&target_name);
   gssp_hostbased_service(&data->creds.cr_targ_princ);
  }
 }
 kfree(client_name.data);
 kfree(target_name.data);

 return ret;
}
