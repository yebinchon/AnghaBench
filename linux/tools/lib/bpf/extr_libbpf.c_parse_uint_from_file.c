
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int EIO ;
 int EOF ;
 int STRERR_BUFSIZE ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char const*,int*) ;
 int libbpf_strerror_r (int,char*,int) ;
 int pr_debug (char*,char const*,int ) ;

__attribute__((used)) static int parse_uint_from_file(const char *file, const char *fmt)
{
 char buf[STRERR_BUFSIZE];
 int err, ret;
 FILE *f;

 f = fopen(file, "r");
 if (!f) {
  err = -errno;
  pr_debug("failed to open '%s': %s\n", file,
    libbpf_strerror_r(err, buf, sizeof(buf)));
  return err;
 }
 err = fscanf(f, fmt, &ret);
 if (err != 1) {
  err = err == EOF ? -EIO : -errno;
  pr_debug("failed to parse '%s': %s\n", file,
   libbpf_strerror_r(err, buf, sizeof(buf)));
  fclose(f);
  return err;
 }
 fclose(f);
 return ret;
}
