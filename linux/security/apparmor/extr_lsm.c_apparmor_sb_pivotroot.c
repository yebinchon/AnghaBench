
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct aa_label {int dummy; } ;


 struct aa_label* aa_get_current_label () ;
 int aa_pivotroot (struct aa_label*,struct path const*,struct path const*) ;
 int aa_put_label (struct aa_label*) ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int apparmor_sb_pivotroot(const struct path *old_path,
     const struct path *new_path)
{
 struct aa_label *label;
 int error = 0;

 label = aa_get_current_label();
 if (!unconfined(label))
  error = aa_pivotroot(label, old_path, new_path);
 aa_put_label(label);

 return error;
}
