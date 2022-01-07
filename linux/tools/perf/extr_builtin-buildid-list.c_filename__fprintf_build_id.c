
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuild_id ;
typedef int FILE ;


 int EINVAL ;
 int SBUILD_ID_SIZE ;
 int filename__sprintf_build_id (char const*,char*) ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static int filename__fprintf_build_id(const char *name, FILE *fp)
{
 char sbuild_id[SBUILD_ID_SIZE];
 int ret;

 ret = filename__sprintf_build_id(name, sbuild_id);
 if (ret != sizeof(sbuild_id))
  return ret < 0 ? ret : -EINVAL;

 return fprintf(fp, "%s\n", sbuild_id);
}
