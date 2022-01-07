
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct aa_proxy* private; } ;
struct aa_proxy {int label; } ;
struct TYPE_2__ {scalar_t__ name; } ;
struct aa_profile {TYPE_1__ base; scalar_t__ xmatch; scalar_t__ attach; } ;
struct aa_label {int dummy; } ;


 struct aa_label* aa_get_label_rcu (int *) ;
 int aa_put_label (struct aa_label*) ;
 struct aa_profile* labels_profile (struct aa_label*) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int seq_profile_attach_show(struct seq_file *seq, void *v)
{
 struct aa_proxy *proxy = seq->private;
 struct aa_label *label = aa_get_label_rcu(&proxy->label);
 struct aa_profile *profile = labels_profile(label);
 if (profile->attach)
  seq_printf(seq, "%s\n", profile->attach);
 else if (profile->xmatch)
  seq_puts(seq, "<unknown>\n");
 else
  seq_printf(seq, "%s\n", profile->base.name);
 aa_put_label(label);

 return 0;
}
