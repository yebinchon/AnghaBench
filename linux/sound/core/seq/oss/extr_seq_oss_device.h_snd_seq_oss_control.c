
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int cseq; } ;


 int snd_seq_client_ioctl_lock (int ) ;
 int snd_seq_client_ioctl_unlock (int ) ;
 int snd_seq_kernel_client_ctl (int ,unsigned int,void*) ;

__attribute__((used)) static inline int
snd_seq_oss_control(struct seq_oss_devinfo *dp, unsigned int type, void *arg)
{
 int err;

 snd_seq_client_ioctl_lock(dp->cseq);
 err = snd_seq_kernel_client_ctl(dp->cseq, type, arg);
 snd_seq_client_ioctl_unlock(dp->cseq);
 return err;
}
