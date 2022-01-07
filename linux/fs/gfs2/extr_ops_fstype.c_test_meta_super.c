
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_bdev; } ;
struct fs_context {scalar_t__ sget_key; } ;



__attribute__((used)) static int test_meta_super(struct super_block *s, struct fs_context *fc)
{
 return (fc->sget_key == s->s_bdev);
}
