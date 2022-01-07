
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_ns* private; } ;
struct aa_profile {struct aa_ns* ns; } ;
struct aa_ns {int lock; struct aa_ns* parent; } ;


 int aa_put_ns (struct aa_ns*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void p_stop(struct seq_file *f, void *p)
{
 struct aa_profile *profile = p;
 struct aa_ns *root = f->private, *ns;

 if (profile) {
  for (ns = profile->ns; ns && ns != root; ns = ns->parent)
   mutex_unlock(&ns->lock);
 }
 mutex_unlock(&root->lock);
 aa_put_ns(root);
}
