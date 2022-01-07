
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int cseq; } ;


 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int,int) ;

__attribute__((used)) static inline int
snd_seq_oss_dispatch(struct seq_oss_devinfo *dp, struct snd_seq_event *ev, int atomic, int hop)
{
 return snd_seq_kernel_client_dispatch(dp->cseq, ev, atomic, hop);
}
