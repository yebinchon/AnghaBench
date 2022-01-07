
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feat_fd {int dummy; } ;
typedef int FILE ;


 int do_write_string (struct feat_fd*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 scalar_t__ isspace (char) ;
 char* skip_spaces (char*) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int ) ;

__attribute__((used)) static int __write_cpudesc(struct feat_fd *ff, const char *cpuinfo_proc)
{
 FILE *file;
 char *buf = ((void*)0);
 char *s, *p;
 const char *search = cpuinfo_proc;
 size_t len = 0;
 int ret = -1;

 if (!search)
  return -1;

 file = fopen("/proc/cpuinfo", "r");
 if (!file)
  return -1;

 while (getline(&buf, &len, file) > 0) {
  ret = strncmp(buf, search, strlen(search));
  if (!ret)
   break;
 }

 if (ret) {
  ret = -1;
  goto done;
 }

 s = buf;

 p = strchr(buf, ':');
 if (p && *(p+1) == ' ' && *(p+2))
  s = p + 2;
 p = strchr(s, '\n');
 if (p)
  *p = '\0';


 p = s;
 while (*p) {
  if (isspace(*p)) {
   char *r = p + 1;
   char *q = skip_spaces(r);
   *p = ' ';
   if (q != (p+1))
    while ((*r++ = *q++));
  }
  p++;
 }
 ret = do_write_string(ff, s);
done:
 free(buf);
 fclose(file);
 return ret;
}
