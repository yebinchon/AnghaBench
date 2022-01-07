
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct aa_profile {int disconnected; } ;


 int AA_BUG (int) ;
 int AA_CLASS_MOUNT ;
 int EACCES ;
 char* ERR_PTR (int) ;
 int PROFILE_MEDIATES (struct aa_profile*,int ) ;
 int aa_path_name (struct path*,int ,char*,char const**,char const**,int ) ;
 int match_mnt_path_str (struct aa_profile*,struct path const*,char*,char const*,char const*,unsigned long,void*,int,char const*) ;
 int path_flags (struct aa_profile*,struct path*) ;

__attribute__((used)) static int match_mnt(struct aa_profile *profile, const struct path *path,
       char *buffer, struct path *devpath, char *devbuffer,
       const char *type, unsigned long flags, void *data,
       bool binary)
{
 const char *devname = ((void*)0), *info = ((void*)0);
 int error = -EACCES;

 AA_BUG(!profile);
 AA_BUG(devpath && !devbuffer);

 if (!PROFILE_MEDIATES(profile, AA_CLASS_MOUNT))
  return 0;

 if (devpath) {
  error = aa_path_name(devpath, path_flags(profile, devpath),
         devbuffer, &devname, &info,
         profile->disconnected);
  if (error)
   devname = ERR_PTR(error);
 }

 return match_mnt_path_str(profile, path, buffer, devname, type, flags,
      data, binary, info);
}
