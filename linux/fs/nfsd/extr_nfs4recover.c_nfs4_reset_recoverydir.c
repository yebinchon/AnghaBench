
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;


 int ENOTDIR ;
 int LOOKUP_FOLLOW ;
 scalar_t__ d_is_dir (int ) ;
 int kern_path (char*,int ,struct path*) ;
 int path_put (struct path*) ;
 int strcpy (int ,char*) ;
 int user_recovery_dirname ;

int
nfs4_reset_recoverydir(char *recdir)
{
 int status;
 struct path path;

 status = kern_path(recdir, LOOKUP_FOLLOW, &path);
 if (status)
  return status;
 status = -ENOTDIR;
 if (d_is_dir(path.dentry)) {
  strcpy(user_recovery_dirname, recdir);
  status = 0;
 }
 path_put(&path);
 return status;
}
