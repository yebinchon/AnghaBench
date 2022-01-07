
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct sctp_ht_iter* private; } ;
struct sctp_ht_iter {int hti; } ;
typedef int loff_t ;


 void* sctp_transport_get_next (int ,int *) ;
 int seq_file_net (struct seq_file*) ;

__attribute__((used)) static void *sctp_transport_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 struct sctp_ht_iter *iter = seq->private;

 ++*pos;

 return sctp_transport_get_next(seq_file_net(seq), &iter->hti);
}
