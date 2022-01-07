
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {unsigned long val; int show_string_prefix; int thread; } ;
struct file {scalar_t__ dev_maj; } ;


 scalar_t__ USB_DEVICE_MAJOR ;
 int _IOC_DIR (unsigned long) ;
 int _IOC_NR (unsigned long) ;
 size_t ioctl__scnprintf_cmd (unsigned long,char*,size_t,int ) ;
 size_t ioctl__scnprintf_usbdevfs_cmd (int ,int ,char*,size_t) ;
 int syscall_arg__val (struct syscall_arg*,int ) ;
 struct file* thread__files_entry (int ,int) ;

size_t syscall_arg__scnprintf_ioctl_cmd(char *bf, size_t size, struct syscall_arg *arg)
{
 unsigned long cmd = arg->val;
 int fd = syscall_arg__val(arg, 0);
 struct file *file = thread__files_entry(arg->thread, fd);

 if (file != ((void*)0)) {
  if (file->dev_maj == USB_DEVICE_MAJOR)
   return ioctl__scnprintf_usbdevfs_cmd(_IOC_NR(cmd), _IOC_DIR(cmd), bf, size);
 }

 return ioctl__scnprintf_cmd(cmd, bf, size, arg->show_string_prefix);
}
