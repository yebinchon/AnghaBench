
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {scalar_t__ in_rs_table; int d_list; } ;


 int hlist_del_rcu (int *) ;

__attribute__((used)) static void ip_vs_rs_unhash(struct ip_vs_dest *dest)
{



 if (dest->in_rs_table) {
  hlist_del_rcu(&dest->d_list);
  dest->in_rs_table = 0;
 }
}
