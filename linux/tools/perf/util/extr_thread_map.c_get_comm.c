
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ENOMEM ;
 int asprintf (char**,char*,int ,int ) ;
 int filename__read_str (char*,char**,size_t*) ;
 int free (char*) ;
 int procfs__mountpoint () ;
 int strim (char*) ;

__attribute__((used)) static int get_comm(char **comm, pid_t pid)
{
 char *path;
 size_t size;
 int err;

 if (asprintf(&path, "%s/%d/comm", procfs__mountpoint(), pid) == -1)
  return -ENOMEM;

 err = filename__read_str(path, comm, &size);
 if (!err) {





  (*comm)[size] = 0;
  strim(*comm);
 }

 free(path);
 return err;
}
