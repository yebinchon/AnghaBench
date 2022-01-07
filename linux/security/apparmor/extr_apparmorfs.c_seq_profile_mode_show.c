
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_proxy* private; } ;
struct aa_proxy {int label; } ;
struct aa_profile {size_t mode; } ;
struct aa_label {int dummy; } ;


 struct aa_label* aa_get_label_rcu (int *) ;
 int * aa_profile_mode_names ;
 int aa_put_label (struct aa_label*) ;
 struct aa_profile* labels_profile (struct aa_label*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int seq_profile_mode_show(struct seq_file *seq, void *v)
{
 struct aa_proxy *proxy = seq->private;
 struct aa_label *label = aa_get_label_rcu(&proxy->label);
 struct aa_profile *profile = labels_profile(label);
 seq_printf(seq, "%s\n", aa_profile_mode_names[profile->mode]);
 aa_put_label(label);

 return 0;
}
