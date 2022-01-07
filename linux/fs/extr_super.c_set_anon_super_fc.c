
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fs_context {int dummy; } ;


 int set_anon_super (struct super_block*,int *) ;

int set_anon_super_fc(struct super_block *sb, struct fs_context *fc)
{
 return set_anon_super(sb, ((void*)0));
}
