
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;


 scalar_t__ BUFSIZ ;
 int ENOMEM ;
 int O_RDONLY ;
 int STRERR_BUFSIZE ;
 int close (int) ;
 int errno ;
 int free (void*) ;
 int open (char const*,int ) ;
 int pr_warning (char*,int,int ) ;
 int read (int,void*,size_t) ;
 void* realloc (void*,size_t) ;
 int strerror_r (int,char*,int) ;

int filename__read_str(const char *filename, char **buf, size_t *sizep)
{
 size_t size = 0, alloc_size = 0;
 void *bf = ((void*)0), *nbf;
 int fd, n, err = 0;
 char sbuf[STRERR_BUFSIZE];

 fd = open(filename, O_RDONLY);
 if (fd < 0)
  return -errno;

 do {
  if (size == alloc_size) {
   alloc_size += BUFSIZ;
   nbf = realloc(bf, alloc_size);
   if (!nbf) {
    err = -ENOMEM;
    break;
   }

   bf = nbf;
  }

  n = read(fd, bf + size, alloc_size - size);
  if (n < 0) {
   if (size) {
    pr_warning("read failed %d: %s\n", errno,
      strerror_r(errno, sbuf, sizeof(sbuf)));
    err = 0;
   } else
    err = -errno;

   break;
  }

  size += n;
 } while (n > 0);

 if (!err) {
  *sizep = size;
  *buf = bf;
 } else
  free(bf);

 close(fd);
 return err;
}
