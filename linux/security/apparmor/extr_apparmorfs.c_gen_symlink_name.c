
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *gen_symlink_name(int depth, const char *dirname, const char *fname)
{
 char *buffer, *s;
 int error;
 int size = depth * 6 + strlen(dirname) + strlen(fname) + 11;

 s = buffer = kmalloc(size, GFP_KERNEL);
 if (!buffer)
  return ERR_PTR(-ENOMEM);

 for (; depth > 0; depth--) {
  strcpy(s, "../../");
  s += 6;
  size -= 6;
 }

 error = snprintf(s, size, "raw_data/%s/%s", dirname, fname);
 if (error >= size || error < 0) {
  kfree(buffer);
  return ERR_PTR(-ENAMETOOLONG);
 }

 return buffer;
}
