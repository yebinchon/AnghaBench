
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fwrite (void*,size_t,int,int *) ;
 int pr_info (char*,char*) ;
 int pr_warning (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int strerror (int ) ;
 char* strrchr (char*,char) ;

void llvm__dump_obj(const char *path, void *obj_buf, size_t size)
{
 char *obj_path = strdup(path);
 FILE *fp;
 char *p;

 if (!obj_path) {
  pr_warning("WARNING: Not enough memory, skip object dumping\n");
  return;
 }

 p = strrchr(obj_path, '.');
 if (!p || (strcmp(p, ".c") != 0)) {
  pr_warning("WARNING: invalid llvm source path: '%s', skip object dumping\n",
      obj_path);
  goto out;
 }

 p[1] = 'o';
 fp = fopen(obj_path, "wb");
 if (!fp) {
  pr_warning("WARNING: failed to open '%s': %s, skip object dumping\n",
      obj_path, strerror(errno));
  goto out;
 }

 pr_info("LLVM: dumping %s\n", obj_path);
 if (fwrite(obj_buf, size, 1, fp) != 1)
  pr_warning("WARNING: failed to write to file '%s': %s, skip object dumping\n",
      obj_path, strerror(errno));
 fclose(fp);
out:
 free(obj_path);
}
