
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;


 scalar_t__ gzgets (int ,char*,size_t) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool read_next_kernel_config_option(gzFile file, char *buf, size_t n,
        char **value)
{
 char *sep;

 while (gzgets(file, buf, n)) {
  if (strncmp(buf, "CONFIG_", 7))
   continue;

  sep = strchr(buf, '=');
  if (!sep)
   continue;


  buf[strlen(buf) - 1] = '\0';


  *sep = '\0';
  if (!sep[1])
   continue;

  *value = sep + 1;
  return 1;
 }

 return 0;
}
