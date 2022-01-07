
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_bdev; } ;



__attribute__((used)) static int nilfs_test_bdev_super(struct super_block *s, void *data)
{
 return (void *)s->s_bdev == data;
}
