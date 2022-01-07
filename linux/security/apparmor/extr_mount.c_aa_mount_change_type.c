
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 unsigned long MS_PRIVATE ;
 unsigned long MS_REC ;
 unsigned long MS_SHARED ;
 unsigned long MS_SILENT ;
 unsigned long MS_SLAVE ;
 unsigned long MS_UNBINDABLE ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*) ;
 int match_mnt (struct aa_profile*,struct path const*,char*,int *,int *,int *,unsigned long,int *,int) ;
 int put_buffers (char*) ;

int aa_mount_change_type(struct aa_label *label, const struct path *path,
    unsigned long flags)
{
 struct aa_profile *profile;
 char *buffer = ((void*)0);
 int error;

 AA_BUG(!label);
 AA_BUG(!path);


 flags &= (MS_REC | MS_SILENT | MS_SHARED | MS_PRIVATE | MS_SLAVE |
    MS_UNBINDABLE);

 get_buffers(buffer);
 error = fn_for_each_confined(label, profile,
   match_mnt(profile, path, buffer, ((void*)0), ((void*)0), ((void*)0),
      flags, ((void*)0), 0));
 put_buffers(buffer);

 return error;
}
