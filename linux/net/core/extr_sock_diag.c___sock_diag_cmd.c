
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_diag_req {size_t sdiag_family; } ;
struct sock_diag_handler {int (* dump ) (struct sk_buff*,struct nlmsghdr*) ;int (* destroy ) (struct sk_buff*,struct nlmsghdr*) ;} ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;


 size_t AF_MAX ;
 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ SOCK_DESTROY ;
 scalar_t__ SOCK_DIAG_BY_FAMILY ;
 size_t array_index_nospec (size_t,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sock_diag_req* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct sock_diag_handler** sock_diag_handlers ;
 int sock_diag_table_mutex ;
 int sock_load_diag_module (size_t,int ) ;
 int stub1 (struct sk_buff*,struct nlmsghdr*) ;
 int stub2 (struct sk_buff*,struct nlmsghdr*) ;

__attribute__((used)) static int __sock_diag_cmd(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 int err;
 struct sock_diag_req *req = nlmsg_data(nlh);
 const struct sock_diag_handler *hndl;

 if (nlmsg_len(nlh) < sizeof(*req))
  return -EINVAL;

 if (req->sdiag_family >= AF_MAX)
  return -EINVAL;
 req->sdiag_family = array_index_nospec(req->sdiag_family, AF_MAX);

 if (sock_diag_handlers[req->sdiag_family] == ((void*)0))
  sock_load_diag_module(req->sdiag_family, 0);

 mutex_lock(&sock_diag_table_mutex);
 hndl = sock_diag_handlers[req->sdiag_family];
 if (hndl == ((void*)0))
  err = -ENOENT;
 else if (nlh->nlmsg_type == SOCK_DIAG_BY_FAMILY)
  err = hndl->dump(skb, nlh);
 else if (nlh->nlmsg_type == SOCK_DESTROY && hndl->destroy)
  err = hndl->destroy(skb, nlh);
 else
  err = -EOPNOTSUPP;
 mutex_unlock(&sock_diag_table_mutex);

 return err;
}
