
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int mnt; } ;


 int CHROOT_NSCONNECT ;
 int EACCES ;
 int PATH_CONNECT_PATH ;
 scalar_t__ our_mnt (int ) ;
 int prepend (char**,int,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int disconnect(const struct path *path, char *buf, char **name,
        int flags, const char *disconnected)
{
 int error = 0;

 if (!(flags & PATH_CONNECT_PATH) &&
     !(((flags & CHROOT_NSCONNECT) == CHROOT_NSCONNECT) &&
       our_mnt(path->mnt))) {



  error = -EACCES;
  if (**name == '/')
   *name = *name + 1;
 } else {
  if (**name != '/')

   error = prepend(name, *name - buf, "/", 1);
  if (!error && disconnected)
   error = prepend(name, *name - buf, disconnected,
     strlen(disconnected));
 }

 return error;
}
