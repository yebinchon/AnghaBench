
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {char* root_dir; } ;
struct dso {int load_errno; int binary_type; } ;
typedef int newpath ;


 int EINVAL ;
 int ENOMEM ;
 int KMOD_DECOMP_LEN ;
 int PATH_MAX ;
 int do_open (char*) ;
 scalar_t__ dso__decompress_kmodule_path (struct dso*,char*,char*,size_t) ;
 scalar_t__ dso__needs_decompress (struct dso*) ;
 scalar_t__ dso__read_binary_type_filename (struct dso*,int ,char*,char*,int ) ;
 int free (char*) ;
 int is_regular_file (char*) ;
 char* malloc (int ) ;
 int strcpy (char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static int __open_dso(struct dso *dso, struct machine *machine)
{
 int fd = -EINVAL;
 char *root_dir = (char *)"";
 char *name = malloc(PATH_MAX);
 bool decomp = 0;

 if (!name)
  return -ENOMEM;

 if (machine)
  root_dir = machine->root_dir;

 if (dso__read_binary_type_filename(dso, dso->binary_type,
         root_dir, name, PATH_MAX))
  goto out;

 if (!is_regular_file(name))
  goto out;

 if (dso__needs_decompress(dso)) {
  char newpath[KMOD_DECOMP_LEN];
  size_t len = sizeof(newpath);

  if (dso__decompress_kmodule_path(dso, name, newpath, len) < 0) {
   fd = -dso->load_errno;
   goto out;
  }

  decomp = 1;
  strcpy(name, newpath);
 }

 fd = do_open(name);

 if (decomp)
  unlink(name);

out:
 free(name);
 return fd;
}
