
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;


 int ih_entry_count (struct item_head*) ;

__attribute__((used)) static void direntry_check_item(struct item_head *ih, char *item)
{
 int i;
 struct reiserfs_de_head *deh;


 deh = (struct reiserfs_de_head *)item;
 for (i = 0; i < ih_entry_count(ih); i++, deh++) {
  ;
 }
}
