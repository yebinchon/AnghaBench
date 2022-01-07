
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static void errcatch_print_item(struct item_head *ih, char *item)
{
 reiserfs_warning(((void*)0), "green-16004",
    "Invalid item type observed, run fsck ASAP");
}
