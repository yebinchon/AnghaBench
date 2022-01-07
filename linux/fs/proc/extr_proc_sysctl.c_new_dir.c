
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
struct TYPE_4__ {TYPE_1__ header; } ;
struct ctl_table_set {TYPE_2__ dir; } ;
struct ctl_table {char* procname; int mode; } ;
struct ctl_node {int dummy; } ;
struct ctl_dir {int header; } ;


 int GFP_KERNEL ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int init_header (int *,int ,struct ctl_table_set*,struct ctl_node*,struct ctl_table*) ;
 struct ctl_dir* kzalloc (int,int ) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static struct ctl_dir *new_dir(struct ctl_table_set *set,
          const char *name, int namelen)
{
 struct ctl_table *table;
 struct ctl_dir *new;
 struct ctl_node *node;
 char *new_name;

 new = kzalloc(sizeof(*new) + sizeof(struct ctl_node) +
        sizeof(struct ctl_table)*2 + namelen + 1,
        GFP_KERNEL);
 if (!new)
  return ((void*)0);

 node = (struct ctl_node *)(new + 1);
 table = (struct ctl_table *)(node + 1);
 new_name = (char *)(table + 2);
 memcpy(new_name, name, namelen);
 new_name[namelen] = '\0';
 table[0].procname = new_name;
 table[0].mode = S_IFDIR|S_IRUGO|S_IXUGO;
 init_header(&new->header, set->dir.header.root, set, node, table);

 return new;
}
