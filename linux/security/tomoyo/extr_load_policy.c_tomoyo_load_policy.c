
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER ;
 int UMH_WAIT_PROC ;
 int call_usermodehelper (char*,char**,char**,int ) ;
 int pr_info (char*,scalar_t__) ;
 scalar_t__ strcmp (char const*,scalar_t__) ;
 int tomoyo_check_profile () ;
 scalar_t__ tomoyo_loader ;
 scalar_t__ tomoyo_policy_loaded ;
 int tomoyo_policy_loader_exists () ;
 scalar_t__ tomoyo_trigger ;

void tomoyo_load_policy(const char *filename)
{
 static bool done;
 char *argv[2];
 char *envp[3];

 if (tomoyo_policy_loaded || done)
  return;
 if (!tomoyo_trigger)
  tomoyo_trigger = CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER;
 if (strcmp(filename, tomoyo_trigger))
  return;
 if (!tomoyo_policy_loader_exists())
  return;
 done = 1;
 pr_info("Calling %s to load policy. Please wait.\n", tomoyo_loader);
 argv[0] = (char *) tomoyo_loader;
 argv[1] = ((void*)0);
 envp[0] = "HOME=/";
 envp[1] = "PATH=/sbin:/bin:/usr/sbin:/usr/bin";
 envp[2] = ((void*)0);
 call_usermodehelper(argv[0], argv, envp, UMH_WAIT_PROC);
 tomoyo_check_profile();
}
