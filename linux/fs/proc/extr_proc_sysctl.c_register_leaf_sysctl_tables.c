
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_set {int dummy; } ;
struct ctl_table_header {struct ctl_table* ctl_table_arg; } ;
struct ctl_table {struct ctl_table* child; scalar_t__ procname; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ctl_table_header* __register_sysctl_table (struct ctl_table_set*,char const*,struct ctl_table*) ;
 char* append_path (char const*,char*,scalar_t__) ;
 struct ctl_table* kcalloc (int,int,int ) ;
 int kfree (struct ctl_table*) ;

__attribute__((used)) static int register_leaf_sysctl_tables(const char *path, char *pos,
 struct ctl_table_header ***subheader, struct ctl_table_set *set,
 struct ctl_table *table)
{
 struct ctl_table *ctl_table_arg = ((void*)0);
 struct ctl_table *entry, *files;
 int nr_files = 0;
 int nr_dirs = 0;
 int err = -ENOMEM;

 for (entry = table; entry->procname; entry++) {
  if (entry->child)
   nr_dirs++;
  else
   nr_files++;
 }

 files = table;

 if (nr_dirs && nr_files) {
  struct ctl_table *new;
  files = kcalloc(nr_files + 1, sizeof(struct ctl_table),
    GFP_KERNEL);
  if (!files)
   goto out;

  ctl_table_arg = files;
  for (new = files, entry = table; entry->procname; entry++) {
   if (entry->child)
    continue;
   *new = *entry;
   new++;
  }
 }


 if (nr_files || !nr_dirs) {
  struct ctl_table_header *header;
  header = __register_sysctl_table(set, path, files);
  if (!header) {
   kfree(ctl_table_arg);
   goto out;
  }


  header->ctl_table_arg = ctl_table_arg;
  **subheader = header;
  (*subheader)++;
 }


 for (entry = table; entry->procname; entry++) {
  char *child_pos;

  if (!entry->child)
   continue;

  err = -ENAMETOOLONG;
  child_pos = append_path(path, pos, entry->procname);
  if (!child_pos)
   goto out;

  err = register_leaf_sysctl_tables(path, child_pos, subheader,
        set, entry->child);
  pos[0] = '\0';
  if (err)
   goto out;
 }
 err = 0;
out:

 return err;
}
