
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct aa_sfs_entry* private; } ;
struct TYPE_2__ {char* string; char* u64; int boolean; } ;
struct aa_sfs_entry {int v_type; TYPE_1__ v; } ;





 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int aa_sfs_seq_show(struct seq_file *seq, void *v)
{
 struct aa_sfs_entry *fs_file = seq->private;

 if (!fs_file)
  return 0;

 switch (fs_file->v_type) {
 case 130:
  seq_printf(seq, "%s\n", fs_file->v.boolean ? "yes" : "no");
  break;
 case 129:
  seq_printf(seq, "%s\n", fs_file->v.string);
  break;
 case 128:
  seq_printf(seq, "%#08lx\n", fs_file->v.u64);
  break;
 default:

  break;
 }

 return 0;
}
