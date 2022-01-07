
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int count; scalar_t__ nreg; struct ctl_dir* parent; } ;
struct ctl_dir {struct ctl_table_header header; } ;


 int kfree_rcu (struct ctl_table_header*,int ) ;
 int put_links (struct ctl_table_header*) ;
 int rcu ;
 int start_unregistering (struct ctl_table_header*) ;

__attribute__((used)) static void drop_sysctl_table(struct ctl_table_header *header)
{
 struct ctl_dir *parent = header->parent;

 if (--header->nreg)
  return;

 if (parent) {
  put_links(header);
  start_unregistering(header);
 }

 if (!--header->count)
  kfree_rcu(header, rcu);

 if (parent)
  drop_sysctl_table(&parent->header);
}
