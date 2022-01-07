
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;
struct netlink_callback {int data; scalar_t__* args; } ;


 int kfree (int ) ;
 int nf_ct_put (struct nf_conn*) ;

__attribute__((used)) static int ctnetlink_done(struct netlink_callback *cb)
{
 if (cb->args[1])
  nf_ct_put((struct nf_conn *)cb->args[1]);
 kfree(cb->data);
 return 0;
}
