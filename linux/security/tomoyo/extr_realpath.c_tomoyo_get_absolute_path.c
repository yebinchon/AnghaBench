
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct inode {int i_mode; } ;


 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int IS_ERR (char*) ;
 scalar_t__ S_ISDIR (int ) ;
 char* d_absolute_path (struct path const*,char* const,int const) ;
 struct inode* d_backing_inode (int ) ;

__attribute__((used)) static char *tomoyo_get_absolute_path(const struct path *path, char * const buffer,
          const int buflen)
{
 char *pos = ERR_PTR(-ENOMEM);

 if (buflen >= 256) {

  pos = d_absolute_path(path, buffer, buflen - 1);
  if (!IS_ERR(pos) && *pos == '/' && pos[1]) {
   struct inode *inode = d_backing_inode(path->dentry);

   if (inode && S_ISDIR(inode->i_mode)) {
    buffer[buflen - 2] = '/';
    buffer[buflen - 1] = '\0';
   }
  }
 }
 return pos;
}
