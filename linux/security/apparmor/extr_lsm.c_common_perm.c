
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path_cond {int dummy; } ;
struct path {int dummy; } ;
struct aa_label {int dummy; } ;


 struct aa_label* __begin_current_label_crit_section () ;
 int __end_current_label_crit_section (struct aa_label*) ;
 int aa_path_perm (char const*,struct aa_label*,struct path const*,int ,int ,struct path_cond*) ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int common_perm(const char *op, const struct path *path, u32 mask,
         struct path_cond *cond)
{
 struct aa_label *label;
 int error = 0;

 label = __begin_current_label_crit_section();
 if (!unconfined(label))
  error = aa_path_perm(op, label, path, 0, mask, cond);
 __end_current_label_crit_section(label);

 return error;
}
