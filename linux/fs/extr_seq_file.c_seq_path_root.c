
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct path {int dummy; } ;


 int ENAMETOOLONG ;
 int IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int SEQ_SKIP ;
 char* __d_path (struct path const*,struct path const*,char*,size_t) ;
 char* mangle_path (char*,char*,char const*) ;
 int seq_commit (struct seq_file*,int) ;
 size_t seq_get_buf (struct seq_file*,char**) ;

int seq_path_root(struct seq_file *m, const struct path *path,
    const struct path *root, const char *esc)
{
 char *buf;
 size_t size = seq_get_buf(m, &buf);
 int res = -ENAMETOOLONG;

 if (size) {
  char *p;

  p = __d_path(path, root, buf, size);
  if (!p)
   return SEQ_SKIP;
  res = PTR_ERR(p);
  if (!IS_ERR(p)) {
   char *end = mangle_path(buf, p, esc);
   if (end)
    res = end - buf;
   else
    res = -ENAMETOOLONG;
  }
 }
 seq_commit(m, res);

 return res < 0 && res != -ENAMETOOLONG ? res : 0;
}
