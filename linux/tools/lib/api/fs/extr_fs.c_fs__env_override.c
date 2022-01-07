
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int found; int path; int name; } ;


 char* getenv (char*) ;
 int mem_toupper (char*,size_t) ;
 int memcpy (char*,int ,size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (int ) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static bool fs__env_override(struct fs *fs)
{
 char *override_path;
 size_t name_len = strlen(fs->name);

 char upper_name[name_len + 5 + 1];
 memcpy(upper_name, fs->name, name_len);
 mem_toupper(upper_name, name_len);
 strcpy(&upper_name[name_len], "_PATH");

 override_path = getenv(upper_name);
 if (!override_path)
  return 0;

 fs->found = 1;
 strncpy(fs->path, override_path, sizeof(fs->path));
 return 1;
}
