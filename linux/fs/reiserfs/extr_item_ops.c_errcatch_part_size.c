
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static int errcatch_part_size(struct virtual_item *vi, int first, int count)
{
 reiserfs_warning(((void*)0), "green-16009",
    "Invalid item type observed, run fsck ASAP");
 return 0;
}
