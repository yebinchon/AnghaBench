
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int EINVAL ;
 int LOOKUP_FOLLOW ;
 int do_move_mount (struct path*,struct path*) ;
 int kern_path (char const*,int ,struct path*) ;
 int path_put (struct path*) ;

__attribute__((used)) static int do_move_mount_old(struct path *path, const char *old_name)
{
 struct path old_path;
 int err;

 if (!old_name || !*old_name)
  return -EINVAL;

 err = kern_path(old_name, LOOKUP_FOLLOW, &old_path);
 if (err)
  return err;

 err = do_move_mount(&old_path, path);
 path_put(&old_path);
 return err;
}
