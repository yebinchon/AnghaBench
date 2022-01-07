
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_ns* private; } ;
typedef void aa_profile ;
struct aa_ns {int level; int lock; } ;
typedef scalar_t__ loff_t ;


 void* __first_profile (struct aa_ns*,struct aa_ns*) ;
 struct aa_ns* aa_get_current_ns () ;
 int mutex_lock_nested (int *,int ) ;
 void* next_profile (struct aa_ns*,void*) ;

__attribute__((used)) static void *p_start(struct seq_file *f, loff_t *pos)
{
 struct aa_profile *profile = ((void*)0);
 struct aa_ns *root = aa_get_current_ns();
 loff_t l = *pos;
 f->private = root;


 mutex_lock_nested(&root->lock, root->level);
 profile = __first_profile(root, root);


 for (; profile && l > 0; l--)
  profile = next_profile(root, profile);

 return profile;
}
