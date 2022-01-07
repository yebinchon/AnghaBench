
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int exit_list; } ;


 int LIST_HEAD (int ) ;
 int list_add (int *,int *) ;
 int nf_conntrack_cleanup_net_list (int *) ;
 int single ;

void nf_conntrack_cleanup_net(struct net *net)
{
 LIST_HEAD(single);

 list_add(&net->exit_list, &single);
 nf_conntrack_cleanup_net_list(&single);
}
