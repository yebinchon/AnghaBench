
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct seq_buf {int buffer; } ;


 unsigned int seq_buf_used (struct seq_buf*) ;
 int seq_write (struct seq_file*,int ,unsigned int) ;

int seq_buf_print_seq(struct seq_file *m, struct seq_buf *s)
{
 unsigned int len = seq_buf_used(s);

 return seq_write(m, s->buffer, len);
}
