
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_ns* private; } ;
struct aa_profile {int label; } ;
struct aa_ns {int dummy; } ;


 int FLAG_SHOW_MODE ;
 int FLAG_VIEW_SUBNS ;
 int GFP_KERNEL ;
 int aa_label_seq_xprint (struct seq_file*,struct aa_ns*,int *,int,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int seq_show_profile(struct seq_file *f, void *p)
{
 struct aa_profile *profile = (struct aa_profile *)p;
 struct aa_ns *root = f->private;

 aa_label_seq_xprint(f, root, &profile->label,
       FLAG_SHOW_MODE | FLAG_VIEW_SUBNS, GFP_KERNEL);
 seq_putc(f, '\n');

 return 0;
}
