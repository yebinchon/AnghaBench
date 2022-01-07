
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ctl_table_header {struct ctl_dir* parent; struct ctl_table* ctl_table; } ;
struct ctl_table {scalar_t__ procname; } ;
struct TYPE_3__ {int nreg; } ;
struct ctl_dir {TYPE_1__ header; int root; } ;


 int EINVAL ;
 int EROFS ;
 int RB_EMPTY_ROOT (int *) ;
 int clear_empty_dir (struct ctl_dir*) ;
 int drop_sysctl_table (TYPE_1__*) ;
 int erase_header (struct ctl_table_header*) ;
 int insert_entry (struct ctl_table_header*,struct ctl_table*) ;
 int insert_links (struct ctl_table_header*) ;
 scalar_t__ is_empty_dir (TYPE_1__*) ;
 int put_links (struct ctl_table_header*) ;
 int set_empty_dir (struct ctl_dir*) ;
 struct ctl_table* sysctl_mount_point ;

__attribute__((used)) static int insert_header(struct ctl_dir *dir, struct ctl_table_header *header)
{
 struct ctl_table *entry;
 int err;


 if (is_empty_dir(&dir->header))
  return -EROFS;


 if (header->ctl_table == sysctl_mount_point) {
  if (!RB_EMPTY_ROOT(&dir->root))
   return -EINVAL;
  set_empty_dir(dir);
 }

 dir->header.nreg++;
 header->parent = dir;
 err = insert_links(header);
 if (err)
  goto fail_links;
 for (entry = header->ctl_table; entry->procname; entry++) {
  err = insert_entry(header, entry);
  if (err)
   goto fail;
 }
 return 0;
fail:
 erase_header(header);
 put_links(header);
fail_links:
 if (header->ctl_table == sysctl_mount_point)
  clear_empty_dir(dir);
 header->parent = ((void*)0);
 drop_sysctl_table(&dir->header);
 return err;
}
