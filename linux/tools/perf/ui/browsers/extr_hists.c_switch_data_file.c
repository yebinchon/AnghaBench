
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef int path ;
typedef int options ;
typedef int abs_path ;
typedef int FILE ;
typedef int DIR ;


 scalar_t__ DT_REG ;
 int PATH_MAX ;
 int closedir (int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int *,int,int,int *) ;
 int free (void*) ;
 int free_popup_options (char**,int) ;
 char* getenv (char*) ;
 char* input_name ;
 int is_input_name_malloced ;
 scalar_t__ is_perf_magic (int ) ;
 int memset (char**,int ,int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strdup (char*) ;
 int ui__popup_menu (int,char**) ;
 int ui__warning (char*) ;
 int zfree (char**) ;

__attribute__((used)) static int switch_data_file(void)
{
 char *pwd, *options[32], *abs_path[32], *tmp;
 DIR *pwd_dir;
 int nr_options = 0, choice = -1, ret = -1;
 struct dirent *dent;

 pwd = getenv("PWD");
 if (!pwd)
  return ret;

 pwd_dir = opendir(pwd);
 if (!pwd_dir)
  return ret;

 memset(options, 0, sizeof(options));
 memset(abs_path, 0, sizeof(abs_path));

 while ((dent = readdir(pwd_dir))) {
  char path[PATH_MAX];
  u64 magic;
  char *name = dent->d_name;
  FILE *file;

  if (!(dent->d_type == DT_REG))
   continue;

  snprintf(path, sizeof(path), "%s/%s", pwd, name);

  file = fopen(path, "r");
  if (!file)
   continue;

  if (fread(&magic, 1, 8, file) < 8)
   goto close_file_and_continue;

  if (is_perf_magic(magic)) {
   options[nr_options] = strdup(name);
   if (!options[nr_options])
    goto close_file_and_continue;

   abs_path[nr_options] = strdup(path);
   if (!abs_path[nr_options]) {
    zfree(&options[nr_options]);
    ui__warning("Can't search all data files due to memory shortage.\n");
    fclose(file);
    break;
   }

   nr_options++;
  }

close_file_and_continue:
  fclose(file);
  if (nr_options >= 32) {
   ui__warning("Too many perf data files in PWD!\n"
        "Only the first 32 files will be listed.\n");
   break;
  }
 }
 closedir(pwd_dir);

 if (nr_options) {
  choice = ui__popup_menu(nr_options, options);
  if (choice < nr_options && choice >= 0) {
   tmp = strdup(abs_path[choice]);
   if (tmp) {
    if (is_input_name_malloced)
     free((void *)input_name);
    input_name = tmp;
    is_input_name_malloced = 1;
    ret = 0;
   } else
    ui__warning("Data switch failed due to memory shortage!\n");
  }
 }

 free_popup_options(options, nr_options);
 free_popup_options(abs_path, nr_options);
 return ret;
}
