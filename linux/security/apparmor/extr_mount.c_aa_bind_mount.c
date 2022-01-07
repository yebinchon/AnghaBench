
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int EINVAL ;
 int LOOKUP_AUTOMOUNT ;
 int LOOKUP_FOLLOW ;
 unsigned long MS_BIND ;
 unsigned long MS_REC ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*,char*) ;
 int kern_path (char const*,int,struct path*) ;
 int match_mnt (struct aa_profile*,struct path const*,char*,struct path*,char*,int *,unsigned long,int *,int) ;
 int path_put (struct path*) ;
 int put_buffers (char*,char*) ;

int aa_bind_mount(struct aa_label *label, const struct path *path,
    const char *dev_name, unsigned long flags)
{
 struct aa_profile *profile;
 char *buffer = ((void*)0), *old_buffer = ((void*)0);
 struct path old_path;
 int error;

 AA_BUG(!label);
 AA_BUG(!path);

 if (!dev_name || !*dev_name)
  return -EINVAL;

 flags &= MS_REC | MS_BIND;

 error = kern_path(dev_name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &old_path);
 if (error)
  return error;

 get_buffers(buffer, old_buffer);
 error = fn_for_each_confined(label, profile,
   match_mnt(profile, path, buffer, &old_path, old_buffer,
      ((void*)0), flags, ((void*)0), 0));
 put_buffers(buffer, old_buffer);
 path_put(&old_path);

 return error;
}
