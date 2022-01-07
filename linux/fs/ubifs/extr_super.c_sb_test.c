
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cdev; } ;
struct ubifs_info {TYPE_1__ vi; } ;
struct super_block {struct ubifs_info* s_fs_info; } ;



__attribute__((used)) static int sb_test(struct super_block *sb, void *data)
{
 struct ubifs_info *c1 = data;
 struct ubifs_info *c = sb->s_fs_info;

 return c->vi.cdev == c1->vi.cdev;
}
