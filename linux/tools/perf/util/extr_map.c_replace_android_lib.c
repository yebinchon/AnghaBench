
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PATH_MAX ;
 char* getenv (char*) ;
 int snprintf (char*,size_t,char*,char*,char const*,...) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static inline bool replace_android_lib(const char *filename, char *newfilename)
{
 const char *libname;
 char *app_abi;
 size_t app_abi_length, new_length;
 size_t lib_length = 0;

 libname = strrchr(filename, '/');
 if (libname)
  lib_length = strlen(libname);

 app_abi = getenv("APP_ABI");
 if (!app_abi)
  return 0;

 app_abi_length = strlen(app_abi);

 if (!strncmp(filename, "/data/app-lib", 13)) {
  char *apk_path;

  if (!app_abi_length)
   return 0;

  new_length = 7 + app_abi_length + lib_length;

  apk_path = getenv("APK_PATH");
  if (apk_path) {
   new_length += strlen(apk_path) + 1;
   if (new_length > PATH_MAX)
    return 0;
   snprintf(newfilename, new_length,
     "%s/libs/%s/%s", apk_path, app_abi, libname);
  } else {
   if (new_length > PATH_MAX)
    return 0;
   snprintf(newfilename, new_length,
     "libs/%s/%s", app_abi, libname);
  }
  return 1;
 }

 if (!strncmp(filename, "/system/lib/", 11)) {
  char *ndk, *app;
  const char *arch;
  size_t ndk_length;
  size_t app_length;

  ndk = getenv("NDK_ROOT");
  app = getenv("APP_PLATFORM");

  if (!(ndk && app))
   return 0;

  ndk_length = strlen(ndk);
  app_length = strlen(app);

  if (!(ndk_length && app_length && app_abi_length))
   return 0;

  arch = !strncmp(app_abi, "arm", 3) ? "arm" :
         !strncmp(app_abi, "mips", 4) ? "mips" :
         !strncmp(app_abi, "x86", 3) ? "x86" : ((void*)0);

  if (!arch)
   return 0;

  new_length = 27 + ndk_length +
        app_length + lib_length
      + strlen(arch);

  if (new_length > PATH_MAX)
   return 0;
  snprintf(newfilename, new_length,
   "%s/platforms/%s/arch-%s/usr/lib/%s",
   ndk, app, arch, libname);

  return 1;
 }
 return 0;
}
