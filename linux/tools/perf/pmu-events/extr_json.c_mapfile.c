
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _SC_PAGESIZE ;
 int close (int) ;
 int errno ;
 int fstat (int,struct stat*) ;
 char* mmap (int *,unsigned int,int,int ,int,int ) ;
 int open (char const*,int ) ;
 int pr_err (char*,char const*,int ) ;
 int strerror (int ) ;
 unsigned int sysconf (int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static char *mapfile(const char *fn, size_t *size)
{
 unsigned ps = sysconf(_SC_PAGESIZE);
 struct stat st;
 char *map = ((void*)0);
 int err;
 int fd = open(fn, O_RDONLY);

 if (fd < 0 && verbose > 0 && fn) {
  pr_err("Error opening events file '%s': %s\n", fn,
    strerror(errno));
 }

 if (fd < 0)
  return ((void*)0);
 err = fstat(fd, &st);
 if (err < 0)
  goto out;
 *size = st.st_size;
 map = mmap(((void*)0),
     (st.st_size + ps - 1) & ~(ps - 1),
     PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
 if (map == MAP_FAILED)
  map = ((void*)0);
out:
 close(fd);
 return map;
}
