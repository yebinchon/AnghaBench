
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;


 int O_RDONLY ;
 int S_ISREG (int ) ;
 int close (int) ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;

__attribute__((used)) static char *get_flog_buff(const char *file, unsigned int *klen)
{
 int fd, ret, len;
 struct stat fi;
 char *buff;

 fd = open(file, O_RDONLY);
 if (fd < 0)
  return ((void*)0);

 ret = fstat(fd, &fi);
 if (ret < 0 || !S_ISREG(fi.st_mode))
  goto out;

 len = fi.st_size + 1;
 buff = malloc(len);
 if (!buff)
  goto out;

 memset(buff, 0, len);
 ret = read(fd, buff, len - 1);
 if (ret <= 0)
  goto out_free;

 close(fd);
 *klen = ret;
 return buff;
out_free:
 free(buff);
out:
 close(fd);
 return ((void*)0);
}
