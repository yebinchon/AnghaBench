
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int dev_id ;
typedef int buf ;
typedef int FILE ;
typedef int DIR ;


 char* KVP_NET_DIR ;
 int PATH_MAX ;
 int closedir (int *) ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,int ) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static char *kvp_get_if_name(char *guid)
{
 DIR *dir;
 struct dirent *entry;
 FILE *file;
 char *p, *x;
 char *if_name = ((void*)0);
 char buf[256];
 char dev_id[PATH_MAX];

 dir = opendir(KVP_NET_DIR);
 if (dir == ((void*)0))
  return ((void*)0);

 while ((entry = readdir(dir)) != ((void*)0)) {



  snprintf(dev_id, sizeof(dev_id), "%s%s/device/device_id",
    KVP_NET_DIR, entry->d_name);

  file = fopen(dev_id, "r");
  if (file == ((void*)0))
   continue;

  p = fgets(buf, sizeof(buf), file);
  if (p) {
   x = strchr(p, '\n');
   if (x)
    *x = '\0';

   if (!strcmp(p, guid)) {




    if_name = strdup(entry->d_name);
    fclose(file);
    break;
   }
  }
  fclose(file);
 }

 closedir(dir);
 return if_name;
}
