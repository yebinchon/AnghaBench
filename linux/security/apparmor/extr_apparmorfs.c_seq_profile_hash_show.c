
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_proxy* private; } ;
struct aa_proxy {int label; } ;
struct aa_profile {int * hash; } ;
struct aa_label {int dummy; } ;


 struct aa_label* aa_get_label_rcu (int *) ;
 unsigned int aa_hash_size () ;
 int aa_put_label (struct aa_label*) ;
 struct aa_profile* labels_profile (struct aa_label*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int seq_profile_hash_show(struct seq_file *seq, void *v)
{
 struct aa_proxy *proxy = seq->private;
 struct aa_label *label = aa_get_label_rcu(&proxy->label);
 struct aa_profile *profile = labels_profile(label);
 unsigned int i, size = aa_hash_size();

 if (profile->hash) {
  for (i = 0; i < size; i++)
   seq_printf(seq, "%.2x", profile->hash[i]);
  seq_putc(seq, '\n');
 }
 aa_put_label(label);

 return 0;
}
