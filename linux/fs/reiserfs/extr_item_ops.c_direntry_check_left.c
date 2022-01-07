
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {struct direntry_uarea* vi_uarea; } ;
struct direntry_uarea {int entry_count; int* entry_sizes; int flags; } ;


 int DIRENTRY_VI_FIRST_DIRENTRY_ITEM ;
 int reiserfs_panic (int *,char*,char*,int,int) ;

__attribute__((used)) static int direntry_check_left(struct virtual_item *vi, int free,
          int start_skip, int end_skip)
{
 int i;
 int entries = 0;
 struct direntry_uarea *dir_u = vi->vi_uarea;

 for (i = start_skip; i < dir_u->entry_count - end_skip; i++) {

  if (dir_u->entry_sizes[i] > free)
   break;

  free -= dir_u->entry_sizes[i];
  entries++;
 }

 if (entries == dir_u->entry_count) {
  reiserfs_panic(((void*)0), "item_ops-1",
          "free space %d, entry_count %d", free,
          dir_u->entry_count);
 }


 if (start_skip == 0 && (dir_u->flags & DIRENTRY_VI_FIRST_DIRENTRY_ITEM)
     && entries < 2)
  entries = 0;

 return entries ? : -1;
}
