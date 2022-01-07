
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct super_block {struct ubifs_info* s_fs_info; } ;


 int kfree (struct ubifs_info*) ;
 int kill_anon_super (struct super_block*) ;

__attribute__((used)) static void kill_ubifs_super(struct super_block *s)
{
 struct ubifs_info *c = s->s_fs_info;
 kill_anon_super(s);
 kfree(c);
}
