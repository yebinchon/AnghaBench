
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nlm_file {int f_file; } ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 TYPE_1__* locks_inode (int ) ;

__attribute__((used)) static int
nlmsvc_match_sb(void *datap, struct nlm_file *file)
{
 struct super_block *sb = datap;

 return sb == locks_inode(file->f_file)->i_sb;
}
