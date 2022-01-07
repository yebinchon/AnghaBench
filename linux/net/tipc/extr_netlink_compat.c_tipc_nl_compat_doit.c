
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_compat_msg {int rep; scalar_t__ req_type; int req; int req_size; } ;
struct tipc_nl_compat_cmd_doit {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int TLV_CHECK_TYPE (int ,scalar_t__) ;
 int __tipc_nl_compat_doit (struct tipc_nl_compat_cmd_doit*,struct tipc_nl_compat_msg*) ;
 int tipc_tlv_alloc (int ) ;

__attribute__((used)) static int tipc_nl_compat_doit(struct tipc_nl_compat_cmd_doit *cmd,
          struct tipc_nl_compat_msg *msg)
{
 int err;

 if (msg->req_type && (!msg->req_size ||
         !TLV_CHECK_TYPE(msg->req, msg->req_type)))
  return -EINVAL;

 err = __tipc_nl_compat_doit(cmd, msg);
 if (err)
  return err;


 msg->rep = tipc_tlv_alloc(0);
 if (!msg->rep)
  return -ENOMEM;

 return 0;
}
