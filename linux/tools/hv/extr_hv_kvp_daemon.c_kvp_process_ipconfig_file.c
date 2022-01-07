
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 char* fgets (char*,int,int *) ;
 int memset (char*,int ,unsigned int) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static void kvp_process_ipconfig_file(char *cmd,
     char *config_buf, unsigned int len,
     int element_size, int offset)
{
 char buf[256];
 char *p;
 char *x;
 FILE *file;




 file = popen(cmd, "r");
 if (file == ((void*)0))
  return;

 if (offset == 0)
  memset(config_buf, 0, len);
 while ((p = fgets(buf, sizeof(buf), file)) != ((void*)0)) {
  if (len < strlen(config_buf) + element_size + 1)
   break;

  x = strchr(p, '\n');
  if (x)
   *x = '\0';

  strcat(config_buf, p);
  strcat(config_buf, ";");
 }
 pclose(file);
}
