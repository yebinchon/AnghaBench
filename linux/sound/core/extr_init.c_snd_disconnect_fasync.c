
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int snd_disconnect_fasync(int fd, struct file *file, int on)
{
 return -ENODEV;
}
