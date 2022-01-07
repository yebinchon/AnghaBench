
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int * id; scalar_t__ size; } ;
struct net {int dummy; } ;


 int kfree (int ) ;
 int net_generic (struct net*,int ) ;

__attribute__((used)) static void ops_free(const struct pernet_operations *ops, struct net *net)
{
 if (ops->id && ops->size) {
  kfree(net_generic(net, *ops->id));
 }
}
