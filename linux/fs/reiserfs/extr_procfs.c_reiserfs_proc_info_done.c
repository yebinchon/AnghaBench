
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_id; } ;
struct proc_dir_entry {int dummy; } ;
struct TYPE_2__ {struct proc_dir_entry* procdir; } ;


 int BDEVNAME_SIZE ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int proc_info_root ;
 int remove_proc_subtree (char*,int ) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,int ,int) ;

int reiserfs_proc_info_done(struct super_block *sb)
{
 struct proc_dir_entry *de = REISERFS_SB(sb)->procdir;
 if (de) {
  char b[BDEVNAME_SIZE];
  char *s;


  strlcpy(b, sb->s_id, BDEVNAME_SIZE);
  s = strchr(b, '/');
  if (s)
   *s = '!';

  remove_proc_subtree(b, proc_info_root);
  REISERFS_SB(sb)->procdir = ((void*)0);
 }
 return 0;
}
