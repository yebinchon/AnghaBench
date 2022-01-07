
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {char* name; char const** mounts; } ;


 scalar_t__ getenv (char*) ;
 int mem_toupper (char*,size_t) ;
 int snprintf (char*,size_t,char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static const char *mount_overload(struct fs *fs)
{
 size_t name_len = strlen(fs->name);

 char upper_name[5 + name_len + 12 + 1];

 snprintf(upper_name, name_len, "PERF_%s_ENVIRONMENT", fs->name);
 mem_toupper(upper_name, name_len);

 return getenv(upper_name) ?: *fs->mounts;
}
