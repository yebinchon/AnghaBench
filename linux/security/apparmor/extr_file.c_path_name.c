
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path_cond {int uid; } ;
struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int disconnected; } ;


 int aa_audit_file (struct aa_profile*,int *,char const*,int ,char const*,int *,int *,int ,char const*,int) ;
 int aa_path_name (struct path const*,int,char*,char const**,char const**,int ) ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 TYPE_1__* labels_profile (struct aa_label*) ;
 int nullperms ;

__attribute__((used)) static int path_name(const char *op, struct aa_label *label,
       const struct path *path, int flags, char *buffer,
       const char **name, struct path_cond *cond, u32 request)
{
 struct aa_profile *profile;
 const char *info = ((void*)0);
 int error;

 error = aa_path_name(path, flags, buffer, name, &info,
        labels_profile(label)->disconnected);
 if (error) {
  fn_for_each_confined(label, profile,
   aa_audit_file(profile, &nullperms, op, request, *name,
          ((void*)0), ((void*)0), cond->uid, info, error));
  return error;
 }

 return 0;
}
