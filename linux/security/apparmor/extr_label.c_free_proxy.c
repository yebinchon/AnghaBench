
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_proxy {int label; } ;
struct aa_label {int dummy; } ;


 scalar_t__ PROXY_POISON ;
 int RCU_INIT_POINTER (int ,struct aa_label*) ;
 int aa_put_label (int ) ;
 int kfree (struct aa_proxy*) ;
 int memset (struct aa_proxy*,int ,int) ;
 int rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void free_proxy(struct aa_proxy *proxy)
{
 if (proxy) {

  aa_put_label(rcu_dereference_protected(proxy->label, 1));
  memset(proxy, 0, sizeof(*proxy));
  RCU_INIT_POINTER(proxy->label, (struct aa_label *)PROXY_POISON);
  kfree(proxy);
 }
}
