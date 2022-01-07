
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; int d_name; } ;
typedef int path ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int PATH_MAX ;
 int closedir (int *) ;
 scalar_t__ filename__read_str (char*,char**,size_t*) ;
 int free (char*) ;
 int * opendir (int ) ;
 int procfs__mountpoint () ;
 struct dirent* readdir (int *) ;
 int scnprintf (char*,int,char*,int ,int ) ;
 int strcmp (char*,int ) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static bool find_process(const char *name)
{
 size_t len = strlen(name);
 DIR *dir;
 struct dirent *d;
 int ret = -1;

 dir = opendir(procfs__mountpoint());
 if (!dir)
  return 0;


 while (ret && (d = readdir(dir)) != ((void*)0)) {
  char path[PATH_MAX];
  char *data;
  size_t size;

  if ((d->d_type != DT_DIR) ||
       !strcmp(".", d->d_name) ||
       !strcmp("..", d->d_name))
   continue;

  scnprintf(path, sizeof(path), "%s/%s/comm",
     procfs__mountpoint(), d->d_name);

  if (filename__read_str(path, &data, &size))
   continue;

  ret = strncmp(name, data, len);
  free(data);
 }

 closedir(dir);
 return ret ? 0 : 1;
}
