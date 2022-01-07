
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fs_context {int dummy; } ;



__attribute__((used)) static int test_single_super(struct super_block *s, struct fs_context *fc)
{
 return 1;
}
