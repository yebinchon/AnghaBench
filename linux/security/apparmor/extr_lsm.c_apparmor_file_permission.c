
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int OP_FPERM ;
 int common_file_perm (int ,struct file*,int) ;

__attribute__((used)) static int apparmor_file_permission(struct file *file, int mask)
{
 return common_file_perm(OP_FPERM, file, mask);
}
