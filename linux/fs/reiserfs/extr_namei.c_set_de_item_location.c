
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct reiserfs_dir_entry {int de_item_num; int de_ih; int de_bh; int de_deh; } ;


 int B_I_DEH (int ,int ) ;
 int PATH_LAST_POSITION (struct treepath*) ;
 int get_last_bh (struct treepath*) ;
 int tp_item_head (struct treepath*) ;

__attribute__((used)) static inline void set_de_item_location(struct reiserfs_dir_entry *de,
     struct treepath *path)
{
 de->de_bh = get_last_bh(path);
 de->de_ih = tp_item_head(path);
 de->de_deh = B_I_DEH(de->de_bh, de->de_ih);
 de->de_item_num = PATH_LAST_POSITION(path);
}
