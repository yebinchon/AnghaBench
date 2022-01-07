
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuild_id ;
typedef int FILE ;


 int EINVAL ;
 int SBUILD_ID_SIZE ;
 int fprintf (int *,char*,char*) ;
 int sysfs__sprintf_build_id (char*,char*) ;

__attribute__((used)) static int sysfs__fprintf_build_id(FILE *fp)
{
 char sbuild_id[SBUILD_ID_SIZE];
 int ret;

 ret = sysfs__sprintf_build_id("/", sbuild_id);
 if (ret != sizeof(sbuild_id))
  return ret < 0 ? ret : -EINVAL;

 return fprintf(fp, "%s\n", sbuild_id);
}
