
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_loaddata* private; } ;
struct aa_loaddata {int * hash; } ;


 unsigned int aa_hash_size () ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int seq_rawdata_hash_show(struct seq_file *seq, void *v)
{
 struct aa_loaddata *data = seq->private;
 unsigned int i, size = aa_hash_size();

 if (data->hash) {
  for (i = 0; i < size; i++)
   seq_printf(seq, "%.2x", data->hash[i]);
  seq_putc(seq, '\n');
 }

 return 0;
}
