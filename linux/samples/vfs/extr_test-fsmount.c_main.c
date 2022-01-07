
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 int E (int ) ;
 int E_fsconfig (int,int ,char*,char*,int ) ;
 int FSCONFIG_CMD_CREATE ;
 int FSCONFIG_SET_STRING ;
 int MOUNT_ATTR_RDONLY ;
 int MOVE_MOUNT_F_EMPTY_PATH ;
 int close (int) ;
 int exit (int) ;
 int fsmount (int,int ,int ) ;
 int fsopen (char*,int ) ;
 int mount_error (int,char*) ;
 scalar_t__ move_mount (int,char*,int ,char*,int ) ;
 int perror (char*) ;

int main(int argc, char *argv[])
{
 int fsfd, mfd;


 fsfd = fsopen("afs", 0);
 if (fsfd == -1) {
  perror("fsopen");
  exit(1);
 }

 E_fsconfig(fsfd, FSCONFIG_SET_STRING, "source", "#grand.central.org:root.cell.", 0);
 E_fsconfig(fsfd, FSCONFIG_CMD_CREATE, ((void*)0), ((void*)0), 0);

 mfd = fsmount(fsfd, 0, MOUNT_ATTR_RDONLY);
 if (mfd < 0)
  mount_error(fsfd, "fsmount");
 E(close(fsfd));

 if (move_mount(mfd, "", AT_FDCWD, "/mnt", MOVE_MOUNT_F_EMPTY_PATH) < 0) {
  perror("move_mount");
  exit(1);
 }

 E(close(mfd));
 exit(0);
}
