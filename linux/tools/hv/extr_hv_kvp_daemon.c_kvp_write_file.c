
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int HV_E_FAIL ;
 int fprintf (int *,char*,char*,char*,char*,char*) ;

__attribute__((used)) static int kvp_write_file(FILE *f, char *s1, char *s2, char *s3)
{
 int ret;

 ret = fprintf(f, "%s%s%s%s\n", s1, s2, "=", s3);

 if (ret < 0)
  return HV_E_FAIL;

 return 0;
}
