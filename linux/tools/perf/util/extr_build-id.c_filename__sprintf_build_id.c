
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int build_id ;


 int BUILD_ID_SIZE ;
 int EINVAL ;
 int build_id__sprintf (int *,int,char*) ;
 int filename__read_build_id (char const*,int *,int) ;

int filename__sprintf_build_id(const char *pathname, char *sbuild_id)
{
 u8 build_id[BUILD_ID_SIZE];
 int ret;

 ret = filename__read_build_id(pathname, build_id, sizeof(build_id));
 if (ret < 0)
  return ret;
 else if (ret != sizeof(build_id))
  return -EINVAL;

 return build_id__sprintf(build_id, sizeof(build_id), sbuild_id);
}
