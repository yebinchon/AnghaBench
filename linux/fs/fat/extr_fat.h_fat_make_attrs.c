
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct inode {int i_mode; } ;
struct TYPE_2__ {int i_attrs; } ;


 int ATTR_DIR ;
 int ATTR_RO ;
 TYPE_1__* MSDOS_I (struct inode*) ;
 scalar_t__ S_ISDIR (int) ;
 int S_IWUGO ;
 scalar_t__ fat_mode_can_hold_ro (struct inode*) ;

__attribute__((used)) static inline u8 fat_make_attrs(struct inode *inode)
{
 u8 attrs = MSDOS_I(inode)->i_attrs;
 if (S_ISDIR(inode->i_mode))
  attrs |= ATTR_DIR;
 if (fat_mode_can_hold_ro(inode) && !(inode->i_mode & S_IWUGO))
  attrs |= ATTR_RO;
 return attrs;
}
