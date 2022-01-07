
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct aa_label {int dummy; } ;


 int OP_INHERIT ;
 scalar_t__ aa_file_perm (int ,struct aa_label*,struct file*,int ) ;
 int aa_map_file_to_perms (struct file*) ;

__attribute__((used)) static int match_file(const void *p, struct file *file, unsigned int fd)
{
 struct aa_label *label = (struct aa_label *)p;

 if (aa_file_perm(OP_INHERIT, label, file, aa_map_file_to_perms(file)))
  return fd + 1;
 return 0;
}
