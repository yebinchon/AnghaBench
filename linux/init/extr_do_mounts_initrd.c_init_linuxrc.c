
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {int dummy; } ;
struct cred {int dummy; } ;


 int CLONE_FILES ;
 int CLONE_FS ;
 int MS_MOVE ;
 int O_RDWR ;
 int ksys_chdir (char*) ;
 int ksys_chroot (char*) ;
 int ksys_dup (int ) ;
 int ksys_mount (char*,char*,int *,int ,int *) ;
 int ksys_open (char*,int ,int ) ;
 int ksys_setsid () ;
 int ksys_unshare (int) ;

__attribute__((used)) static int init_linuxrc(struct subprocess_info *info, struct cred *new)
{
 ksys_unshare(CLONE_FS | CLONE_FILES);

 ksys_open("/dev/console", O_RDWR, 0);
 ksys_dup(0);
 ksys_dup(0);

 ksys_chdir("/root");
 ksys_mount(".", "/", ((void*)0), MS_MOVE, ((void*)0));
 ksys_chroot(".");
 ksys_setsid();
 return 0;
}
