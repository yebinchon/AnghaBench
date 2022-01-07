
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int fasync; } ;
struct file {struct snd_timer_user* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int snd_timer_user_fasync(int fd, struct file * file, int on)
{
 struct snd_timer_user *tu;

 tu = file->private_data;
 return fasync_helper(fd, file, on, &tu->fasync);
}
