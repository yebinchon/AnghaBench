
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int addr_file ;
typedef int FILE ;


 char* KVP_NET_DIR ;
 int PATH_MAX ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 unsigned int strlen (char*) ;
 char toupper (char) ;

__attribute__((used)) static char *kvp_if_name_to_mac(char *if_name)
{
 FILE *file;
 char *p, *x;
 char buf[256];
 char addr_file[PATH_MAX];
 unsigned int i;
 char *mac_addr = ((void*)0);

 snprintf(addr_file, sizeof(addr_file), "%s%s%s", KVP_NET_DIR,
   if_name, "/address");

 file = fopen(addr_file, "r");
 if (file == ((void*)0))
  return ((void*)0);

 p = fgets(buf, sizeof(buf), file);
 if (p) {
  x = strchr(p, '\n');
  if (x)
   *x = '\0';
  for (i = 0; i < strlen(p); i++)
   p[i] = toupper(p[i]);
  mac_addr = strdup(p);
 }

 fclose(file);
 return mac_addr;
}
