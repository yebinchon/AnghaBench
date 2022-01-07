
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 scalar_t__ file_has_perm (void const*,struct file*,int ) ;
 int file_to_av (struct file*) ;

__attribute__((used)) static int match_file(const void *p, struct file *file, unsigned fd)
{
 return file_has_perm(p, file, file_to_av(file)) ? fd + 1 : 0;
}
