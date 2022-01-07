
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int CLONE_NEWUSER ;
 int die (char*,int ) ;
 int errno ;
 int getgid () ;
 int getuid () ;
 int maybe_write_file (char*,char*) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setuid (int ) ;
 int strerror (int ) ;
 scalar_t__ unshare (int ) ;
 int write_file (char*,char*,int ) ;

__attribute__((used)) static void create_and_enter_userns(void)
{
 uid_t uid;
 gid_t gid;

 uid = getuid();
 gid = getgid();

 if (unshare(CLONE_NEWUSER) !=0) {
  die("unshare(CLONE_NEWUSER) failed: %s\n",
   strerror(errno));
 }

 maybe_write_file("/proc/self/setgroups", "deny");
 write_file("/proc/self/uid_map", "0 %d 1", uid);
 write_file("/proc/self/gid_map", "0 %d 1", gid);

 if (setgid(0) != 0) {
  die ("setgid(0) failed %s\n",
   strerror(errno));
 }
 if (setuid(0) != 0) {
  die("setuid(0) failed %s\n",
   strerror(errno));
 }
}
