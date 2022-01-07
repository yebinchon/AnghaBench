
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serr ;
typedef int FILE ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int READ_SIZE ;
 int STRERR_BUFSIZE ;
 int WEXITSTATUS (int ) ;
 int errno ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fread (void*,int,int,int *) ;
 int free (void*) ;
 int pclose (int *) ;
 int * popen (char const*,char*) ;
 int pr_err (char*,...) ;
 void* realloc (void*,size_t) ;
 int str_error_r (int ,char*,int) ;

__attribute__((used)) static int
read_from_pipe(const char *cmd, void **p_buf, size_t *p_read_sz)
{
 int err = 0;
 void *buf = ((void*)0);
 FILE *file = ((void*)0);
 size_t read_sz = 0, buf_sz = 0;
 char serr[STRERR_BUFSIZE];

 file = popen(cmd, "r");
 if (!file) {
  pr_err("ERROR: unable to popen cmd: %s\n",
         str_error_r(errno, serr, sizeof(serr)));
  return -EINVAL;
 }

 while (!feof(file) && !ferror(file)) {




  if (buf_sz - read_sz < READ_SIZE + 1) {
   void *new_buf;

   buf_sz = read_sz + READ_SIZE + 1;
   new_buf = realloc(buf, buf_sz);

   if (!new_buf) {
    pr_err("ERROR: failed to realloc memory\n");
    err = -ENOMEM;
    goto errout;
   }

   buf = new_buf;
  }
  read_sz += fread(buf + read_sz, 1, READ_SIZE, file);
 }

 if (buf_sz - read_sz < 1) {
  pr_err("ERROR: internal error\n");
  err = -EINVAL;
  goto errout;
 }

 if (ferror(file)) {
  pr_err("ERROR: error occurred when reading from pipe: %s\n",
         str_error_r(errno, serr, sizeof(serr)));
  err = -EIO;
  goto errout;
 }

 err = WEXITSTATUS(pclose(file));
 file = ((void*)0);
 if (err) {
  err = -EINVAL;
  goto errout;
 }






 ((char *)buf)[read_sz] = '\0';

 if (!p_buf)
  free(buf);
 else
  *p_buf = buf;

 if (p_read_sz)
  *p_read_sz = read_sz;
 return 0;

errout:
 if (file)
  pclose(file);
 free(buf);
 if (p_buf)
  *p_buf = ((void*)0);
 if (p_read_sz)
  *p_read_sz = 0;
 return err;
}
