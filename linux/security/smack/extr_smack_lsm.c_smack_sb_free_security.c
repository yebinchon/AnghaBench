
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_security; } ;


 int kfree (int *) ;

__attribute__((used)) static void smack_sb_free_security(struct super_block *sb)
{
 kfree(sb->s_security);
 sb->s_security = ((void*)0);
}
