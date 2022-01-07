
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int OP_FRECEIVE ;
 int aa_map_file_to_perms (struct file*) ;
 int common_file_perm (int ,struct file*,int ) ;

__attribute__((used)) static int apparmor_file_receive(struct file *file)
{
 return common_file_perm(OP_FRECEIVE, file, aa_map_file_to_perms(file));
}
