
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int assert (char*) ;
 int free (char*) ;
 scalar_t__ getpid () ;
 size_t readlink (char*,char*,size_t) ;
 int snprintf (char*,size_t,char*,int) ;
 char* strdup (char*) ;

__attribute__((used)) static void get_exec_path(char *tpath, size_t size)
{
 char *path;
 ssize_t len;

 snprintf(tpath, size, "/proc/%d/exe", (int) getpid());
 tpath[size - 1] = 0;

 path = strdup(tpath);
 assert(path);

 len = readlink(path, tpath, size);
 tpath[len] = 0;

 free(path);
}
