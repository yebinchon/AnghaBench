
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct aa_ns* private; } ;
struct aa_profile {int dummy; } ;
struct aa_ns {int dummy; } ;
typedef int loff_t ;


 void* next_profile (struct aa_ns*,struct aa_profile*) ;

__attribute__((used)) static void *p_next(struct seq_file *f, void *p, loff_t *pos)
{
 struct aa_profile *profile = p;
 struct aa_ns *ns = f->private;
 (*pos)++;

 return next_profile(ns, profile);
}
