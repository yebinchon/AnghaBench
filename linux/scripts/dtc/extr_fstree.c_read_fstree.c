
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_size; } ;
struct property {int dummy; } ;
struct node {int dummy; } ;
struct dirent {int d_name; } ;
typedef int FILE ;
typedef int DIR ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int add_child (struct node*,struct node*) ;
 int add_property (struct node*,struct property*) ;
 struct node* build_node (int *,int *,int *) ;
 struct property* build_property (int ,int ,int *) ;
 int closedir (int *) ;
 int data_copy_file (int *,int ) ;
 int die (char*,char const*,char*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 char* join_path (char const*,int ) ;
 scalar_t__ lstat (char*,struct stat*) ;
 struct node* name_node (struct node*,int ) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int stderr ;
 scalar_t__ streq (int ,char*) ;
 char* strerror (int ) ;
 int xstrdup (int ) ;

__attribute__((used)) static struct node *read_fstree(const char *dirname)
{
 DIR *d;
 struct dirent *de;
 struct stat st;
 struct node *tree;

 d = opendir(dirname);
 if (!d)
  die("Couldn't opendir() \"%s\": %s\n", dirname, strerror(errno));

 tree = build_node(((void*)0), ((void*)0), ((void*)0));

 while ((de = readdir(d)) != ((void*)0)) {
  char *tmpname;

  if (streq(de->d_name, ".")
      || streq(de->d_name, ".."))
   continue;

  tmpname = join_path(dirname, de->d_name);

  if (lstat(tmpname, &st) < 0)
   die("stat(%s): %s\n", tmpname, strerror(errno));

  if (S_ISREG(st.st_mode)) {
   struct property *prop;
   FILE *pfile;

   pfile = fopen(tmpname, "rb");
   if (! pfile) {
    fprintf(stderr,
     "WARNING: Cannot open %s: %s\n",
     tmpname, strerror(errno));
   } else {
    prop = build_property(xstrdup(de->d_name),
            data_copy_file(pfile,
             st.st_size),
            ((void*)0));
    add_property(tree, prop);
    fclose(pfile);
   }
  } else if (S_ISDIR(st.st_mode)) {
   struct node *newchild;

   newchild = read_fstree(tmpname);
   newchild = name_node(newchild, xstrdup(de->d_name));
   add_child(tree, newchild);
  }

  free(tmpname);
 }

 closedir(d);
 return tree;
}
