
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int procdir; } ;


 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int proc_create_single_data (char*,int ,int ,int (*) (struct seq_file*,void*),struct super_block*) ;

__attribute__((used)) static void add_file(struct super_block *sb, char *name,
       int (*func) (struct seq_file *, void *))
{
 proc_create_single_data(name, 0, REISERFS_SB(sb)->procdir, func, sb);
}
