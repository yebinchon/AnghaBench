
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_path; } ;


 int TOMOYO_TYPE_IOCTL ;
 int tomoyo_path_number_perm (int ,int *,unsigned int) ;

__attribute__((used)) static int tomoyo_file_ioctl(struct file *file, unsigned int cmd,
        unsigned long arg)
{
 return tomoyo_path_number_perm(TOMOYO_TYPE_IOCTL, &file->f_path, cmd);
}
