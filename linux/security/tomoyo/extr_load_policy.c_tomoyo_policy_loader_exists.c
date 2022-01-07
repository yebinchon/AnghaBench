
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 scalar_t__ CONFIG_SECURITY_TOMOYO_POLICY_LOADER ;
 int LOOKUP_FOLLOW ;
 scalar_t__ kern_path (scalar_t__,int ,struct path*) ;
 int path_put (struct path*) ;
 int pr_info (char*,scalar_t__) ;
 scalar_t__ tomoyo_loader ;

__attribute__((used)) static bool tomoyo_policy_loader_exists(void)
{
 struct path path;

 if (!tomoyo_loader)
  tomoyo_loader = CONFIG_SECURITY_TOMOYO_POLICY_LOADER;
 if (kern_path(tomoyo_loader, LOOKUP_FOLLOW, &path)) {
  pr_info("Not activating Mandatory Access Control as %s does not exist.\n",
   tomoyo_loader);
  return 0;
 }
 path_put(&path);
 return 1;
}
