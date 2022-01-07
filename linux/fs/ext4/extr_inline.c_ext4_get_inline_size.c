
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_inline_size; scalar_t__ i_inline_off; } ;


 TYPE_1__* EXT4_I (struct inode*) ;

__attribute__((used)) static int ext4_get_inline_size(struct inode *inode)
{
 if (EXT4_I(inode)->i_inline_off)
  return EXT4_I(inode)->i_inline_size;

 return 0;
}
