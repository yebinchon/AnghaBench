
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {char* release; char* sysname; int machine; } ;
typedef int FILE ;


 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 void* os_build ;
 char* os_major ;
 char* os_minor ;
 char* os_name ;
 char* os_version ;
 int processor_arch ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;
 int uname (TYPE_1__*) ;
 TYPE_1__ uts_buf ;

void kvp_get_os_info(void)
{
 FILE *file;
 char *p, buf[512];

 uname(&uts_buf);
 os_version = uts_buf.release;
 os_build = strdup(uts_buf.release);

 os_name = uts_buf.sysname;
 processor_arch = uts_buf.machine;






 p = strchr(os_version, '-');
 if (p)
  *p = '\0';





 file = fopen("/etc/os-release", "r");
 if (file != ((void*)0)) {
  while (fgets(buf, sizeof(buf), file)) {
   char *value, *q;


   if (buf[0] == '#')
    continue;


   p = strchr(buf, '=');
   if (!p)
    continue;
   *p++ = 0;


   value = p;
   q = p;
   while (*p) {
    if (*p == '\\') {
     ++p;
     if (!*p)
      break;
     *q++ = *p++;
    } else if (*p == '\'' || *p == '"' ||
        *p == '\n') {
     ++p;
    } else {
     *q++ = *p++;
    }
   }
   *q = 0;

   if (!strcmp(buf, "NAME")) {
    p = strdup(value);
    if (!p)
     break;
    os_name = p;
   } else if (!strcmp(buf, "VERSION_ID")) {
    p = strdup(value);
    if (!p)
     break;
    os_major = p;
   }
  }
  fclose(file);
  return;
 }


 file = fopen("/etc/SuSE-release", "r");
 if (file != ((void*)0))
  goto kvp_osinfo_found;
 file = fopen("/etc/redhat-release", "r");
 if (file != ((void*)0))
  goto kvp_osinfo_found;




 return;

kvp_osinfo_found:

 p = fgets(buf, sizeof(buf), file);
 if (p) {
  p = strchr(buf, '\n');
  if (p)
   *p = '\0';
  p = strdup(buf);
  if (!p)
   goto done;
  os_name = p;


  p = fgets(buf, sizeof(buf), file);
  if (p) {
   p = strchr(buf, '\n');
   if (p)
    *p = '\0';
   p = strdup(buf);
   if (!p)
    goto done;
   os_major = p;


   p = fgets(buf, sizeof(buf), file);
   if (p) {
    p = strchr(buf, '\n');
    if (p)
     *p = '\0';
    p = strdup(buf);
    if (p)
     os_minor = p;
   }
  }
 }

done:
 fclose(file);
 return;
}
