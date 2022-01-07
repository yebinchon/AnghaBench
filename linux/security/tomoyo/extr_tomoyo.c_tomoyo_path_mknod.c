
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int S_IALLUGO ;



 int S_IFMT ;

 int TOMOYO_TYPE_CREATE ;
 int TOMOYO_TYPE_MKBLOCK ;
 int TOMOYO_TYPE_MKCHAR ;
 int TOMOYO_TYPE_MKFIFO ;
 int TOMOYO_TYPE_MKSOCK ;
 int tomoyo_mkdev_perm (int,struct path*,unsigned int const,unsigned int) ;
 int tomoyo_path_number_perm (int,struct path*,unsigned int const) ;

__attribute__((used)) static int tomoyo_path_mknod(const struct path *parent, struct dentry *dentry,
        umode_t mode, unsigned int dev)
{
 struct path path = { .mnt = parent->mnt, .dentry = dentry };
 int type = TOMOYO_TYPE_CREATE;
 const unsigned int perm = mode & S_IALLUGO;

 switch (mode & S_IFMT) {
 case 130:
  type = TOMOYO_TYPE_MKCHAR;
  break;
 case 131:
  type = TOMOYO_TYPE_MKBLOCK;
  break;
 default:
  goto no_dev;
 }
 return tomoyo_mkdev_perm(type, &path, perm, dev);
 no_dev:
 switch (mode & S_IFMT) {
 case 129:
  type = TOMOYO_TYPE_MKFIFO;
  break;
 case 128:
  type = TOMOYO_TYPE_MKSOCK;
  break;
 }
 return tomoyo_path_number_perm(type, &path, perm);
}
