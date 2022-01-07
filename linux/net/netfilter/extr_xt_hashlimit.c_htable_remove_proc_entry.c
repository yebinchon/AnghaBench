
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_htable {scalar_t__ family; int name; int net; } ;
struct proc_dir_entry {int dummy; } ;
struct hashlimit_net {struct proc_dir_entry* ip6t_hashlimit; struct proc_dir_entry* ipt_hashlimit; } ;


 scalar_t__ NFPROTO_IPV4 ;
 struct hashlimit_net* hashlimit_pernet (int ) ;
 int remove_proc_entry (int ,struct proc_dir_entry*) ;

__attribute__((used)) static void htable_remove_proc_entry(struct xt_hashlimit_htable *hinfo)
{
 struct hashlimit_net *hashlimit_net = hashlimit_pernet(hinfo->net);
 struct proc_dir_entry *parent;

 if (hinfo->family == NFPROTO_IPV4)
  parent = hashlimit_net->ipt_hashlimit;
 else
  parent = hashlimit_net->ip6t_hashlimit;

 if (parent != ((void*)0))
  remove_proc_entry(hinfo->name, parent);
}
