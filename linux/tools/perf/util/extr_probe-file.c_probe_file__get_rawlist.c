
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;
typedef int FILE ;


 int MAX_CMDLEN ;
 int close (int) ;
 int dup (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int feof (int *) ;
 char* fgets (char*,int,int *) ;
 int pr_debug (char*,int) ;
 int strlen (char*) ;
 int strlist__add (struct strlist*,char*) ;
 int strlist__delete (struct strlist*) ;
 struct strlist* strlist__new (int *,int *) ;

struct strlist *probe_file__get_rawlist(int fd)
{
 int ret, idx, fddup;
 FILE *fp;
 char buf[MAX_CMDLEN];
 char *p;
 struct strlist *sl;

 if (fd < 0)
  return ((void*)0);

 sl = strlist__new(((void*)0), ((void*)0));
 if (sl == ((void*)0))
  return ((void*)0);

 fddup = dup(fd);
 if (fddup < 0)
  goto out_free_sl;

 fp = fdopen(fddup, "r");
 if (!fp)
  goto out_close_fddup;

 while (!feof(fp)) {
  p = fgets(buf, MAX_CMDLEN, fp);
  if (!p)
   break;

  idx = strlen(p) - 1;
  if (p[idx] == '\n')
   p[idx] = '\0';
  ret = strlist__add(sl, buf);
  if (ret < 0) {
   pr_debug("strlist__add failed (%d)\n", ret);
   goto out_close_fp;
  }
 }
 fclose(fp);

 return sl;

out_close_fp:
 fclose(fp);
 goto out_free_sl;
out_close_fddup:
 close(fddup);
out_free_sl:
 strlist__delete(sl);
 return ((void*)0);
}
