
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int EINVAL ;
 int LOOKUP_FOLLOW ;
 int MS_MOVE ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*,char*) ;
 int kern_path (char const*,int ,struct path*) ;
 int match_mnt (struct aa_profile*,struct path const*,char*,struct path*,char*,int *,int ,int *,int) ;
 int path_put (struct path*) ;
 int put_buffers (char*,char*) ;

int aa_move_mount(struct aa_label *label, const struct path *path,
    const char *orig_name)
{
 struct aa_profile *profile;
 char *buffer = ((void*)0), *old_buffer = ((void*)0);
 struct path old_path;
 int error;

 AA_BUG(!label);
 AA_BUG(!path);

 if (!orig_name || !*orig_name)
  return -EINVAL;

 error = kern_path(orig_name, LOOKUP_FOLLOW, &old_path);
 if (error)
  return error;

 get_buffers(buffer, old_buffer);
 error = fn_for_each_confined(label, profile,
   match_mnt(profile, path, buffer, &old_path, old_buffer,
      ((void*)0), MS_MOVE, ((void*)0), 0));
 put_buffers(buffer, old_buffer);
 path_put(&old_path);

 return error;
}
