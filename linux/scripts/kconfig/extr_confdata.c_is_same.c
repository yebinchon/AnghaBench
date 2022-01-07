
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ bcmp (void*,void*,scalar_t__) ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 void* mmap (int *,scalar_t__,int ,int ,int,int ) ;
 int open (char const*,int ) ;

__attribute__((used)) static bool is_same(const char *file1, const char *file2)
{
 int fd1, fd2;
 struct stat st1, st2;
 void *map1, *map2;
 bool ret = 0;

 fd1 = open(file1, O_RDONLY);
 if (fd1 < 0)
  return ret;

 fd2 = open(file2, O_RDONLY);
 if (fd2 < 0)
  goto close1;

 ret = fstat(fd1, &st1);
 if (ret)
  goto close2;
 ret = fstat(fd2, &st2);
 if (ret)
  goto close2;

 if (st1.st_size != st2.st_size)
  goto close2;

 map1 = mmap(((void*)0), st1.st_size, PROT_READ, MAP_PRIVATE, fd1, 0);
 if (map1 == MAP_FAILED)
  goto close2;

 map2 = mmap(((void*)0), st2.st_size, PROT_READ, MAP_PRIVATE, fd2, 0);
 if (map2 == MAP_FAILED)
  goto close2;

 if (bcmp(map1, map2, st1.st_size))
  goto close2;

 ret = 1;
close2:
 close(fd2);
close1:
 close(fd1);

 return ret;
}
