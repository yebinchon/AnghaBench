
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int notes ;
typedef int build_id ;


 int BUILD_ID_SIZE ;
 int PATH_MAX ;
 int build_id__sprintf (int *,int,char*) ;
 int scnprintf (char*,int,char*,char const*) ;
 int sysfs__read_build_id (char*,int *,int) ;

int sysfs__sprintf_build_id(const char *root_dir, char *sbuild_id)
{
 char notes[PATH_MAX];
 u8 build_id[BUILD_ID_SIZE];
 int ret;

 if (!root_dir)
  root_dir = "";

 scnprintf(notes, sizeof(notes), "%s/sys/kernel/notes", root_dir);

 ret = sysfs__read_build_id(notes, build_id, sizeof(build_id));
 if (ret < 0)
  return ret;

 return build_id__sprintf(build_id, sizeof(build_id), sbuild_id);
}
