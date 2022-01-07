
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int free (char*) ;
 char* malloc (int ) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 int page_size ;
 size_t read (int,char*,int ) ;
 int readn (int,char*,size_t) ;

__attribute__((used)) static int kcore_copy__compare_fds(int from, int to)
{
 char *buf_from;
 char *buf_to;
 ssize_t ret;
 size_t len;
 int err = -1;

 buf_from = malloc(page_size);
 buf_to = malloc(page_size);
 if (!buf_from || !buf_to)
  goto out;

 while (1) {

  ret = read(from, buf_from, page_size);
  if (ret < 0)
   goto out;

  if (!ret)
   break;

  len = ret;

  if (readn(to, buf_to, len) != (int)len)
   goto out;

  if (memcmp(buf_from, buf_to, len))
   goto out;
 }

 err = 0;
out:
 free(buf_to);
 free(buf_from);
 return err;
}
