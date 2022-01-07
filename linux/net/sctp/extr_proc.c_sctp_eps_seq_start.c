
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ sctp_ep_hashsize ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void *sctp_eps_seq_start(struct seq_file *seq, loff_t *pos)
{
 if (*pos >= sctp_ep_hashsize)
  return ((void*)0);

 if (*pos < 0)
  *pos = 0;

 if (*pos == 0)
  seq_printf(seq, " ENDPT     SOCK   STY SST HBKT LPORT   UID INODE LADDRS\n");

 return (void *)pos;
}
