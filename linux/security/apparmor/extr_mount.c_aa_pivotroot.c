
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int AA_MAY_PIVOTROOT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int IS_ERR (struct aa_label*) ;
 int OP_PIVOTROOT ;
 int PTR_ERR (struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;
 int aa_replace_current_label (struct aa_label*) ;
 int audit_mount (struct aa_profile*,int ,int *,int *,int *,int *,int ,int *,int ,int *,char*,int) ;
 int build_pivotroot (struct aa_profile*,struct path const*,char*,struct path const*,char*) ;
 int fn_for_each (struct aa_label*,struct aa_profile*,int ) ;
 struct aa_label* fn_label_build (struct aa_label*,struct aa_profile*,int ,int ) ;
 int get_buffers (char*,char*) ;
 int nullperms ;
 int put_buffers (char*,char*) ;

int aa_pivotroot(struct aa_label *label, const struct path *old_path,
   const struct path *new_path)
{
 struct aa_profile *profile;
 struct aa_label *target = ((void*)0);
 char *old_buffer = ((void*)0), *new_buffer = ((void*)0), *info = ((void*)0);
 int error;

 AA_BUG(!label);
 AA_BUG(!old_path);
 AA_BUG(!new_path);

 get_buffers(old_buffer, new_buffer);
 target = fn_label_build(label, profile, GFP_ATOMIC,
   build_pivotroot(profile, new_path, new_buffer,
     old_path, old_buffer));
 if (!target) {
  info = "label build failed";
  error = -ENOMEM;
  goto fail;
 } else if (!IS_ERR(target)) {
  error = aa_replace_current_label(target);
  if (error) {

   aa_put_label(target);
   goto out;
  }
 } else

  error = PTR_ERR(target);
out:
 put_buffers(old_buffer, new_buffer);

 return error;

fail:

 error = fn_for_each(label, profile,
   audit_mount(profile, OP_PIVOTROOT, ((void*)0) ,
        ((void*)0) ,
        ((void*)0), ((void*)0),
        0, ((void*)0), AA_MAY_PIVOTROOT, &nullperms, info,
        error));
 goto out;
}
