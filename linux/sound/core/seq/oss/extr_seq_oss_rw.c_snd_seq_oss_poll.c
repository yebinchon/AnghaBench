
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int cseq; int file_mode; scalar_t__ writeq; scalar_t__ readq; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ is_read_mode (int ) ;
 scalar_t__ is_write_mode (int ) ;
 scalar_t__ snd_seq_kernel_client_write_poll (int ,struct file*,int *) ;
 scalar_t__ snd_seq_oss_readq_poll (scalar_t__,struct file*,int *) ;

__poll_t
snd_seq_oss_poll(struct seq_oss_devinfo *dp, struct file *file, poll_table * wait)
{
 __poll_t mask = 0;


 if (dp->readq && is_read_mode(dp->file_mode)) {
  if (snd_seq_oss_readq_poll(dp->readq, file, wait))
   mask |= EPOLLIN | EPOLLRDNORM;
 }


 if (dp->writeq && is_write_mode(dp->file_mode)) {
  if (snd_seq_kernel_client_write_poll(dp->cseq, file, wait))
   mask |= EPOLLOUT | EPOLLWRNORM;
 }
 return mask;
}
