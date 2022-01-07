
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_loaddata* private; } ;
struct aa_loaddata {int abi; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int seq_rawdata_abi_show(struct seq_file *seq, void *v)
{
 struct aa_loaddata *data = seq->private;

 seq_printf(seq, "v%d\n", data->abi);

 return 0;
}
