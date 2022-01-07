
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_security_struct {int dummy; } ;
struct super_block {struct superblock_security_struct* s_security; } ;


 int kfree (struct superblock_security_struct*) ;

__attribute__((used)) static void superblock_free_security(struct super_block *sb)
{
 struct superblock_security_struct *sbsec = sb->s_security;
 sb->s_security = ((void*)0);
 kfree(sbsec);
}
