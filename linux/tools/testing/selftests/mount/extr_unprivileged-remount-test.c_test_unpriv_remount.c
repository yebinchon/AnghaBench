
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int CLONE_NEWNS ;
 scalar_t__ EXIT_SUCCESS ;
 int MS_BIND ;
 int MS_REMOUNT ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int create_and_enter_userns () ;
 int die (char*,...) ;
 int errno ;
 int exit (scalar_t__) ;
 int fork () ;
 scalar_t__ mount (char*,char*,char const*,int,char const*) ;
 int strerror (int ) ;
 scalar_t__ unshare (int ) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static
bool test_unpriv_remount(const char *fstype, const char *mount_options,
    int mount_flags, int remount_flags, int invalid_flags)
{
 pid_t child;

 child = fork();
 if (child == -1) {
  die("fork failed: %s\n",
   strerror(errno));
 }
 if (child != 0) {
  pid_t pid;
  int status;
  pid = waitpid(child, &status, 0);
  if (pid == -1) {
   die("waitpid failed: %s\n",
    strerror(errno));
  }
  if (pid != child) {
   die("waited for %d got %d\n",
    child, pid);
  }
  if (!WIFEXITED(status)) {
   die("child did not terminate cleanly\n");
  }
  return WEXITSTATUS(status) == EXIT_SUCCESS ? 1 : 0;
 }

 create_and_enter_userns();
 if (unshare(CLONE_NEWNS) != 0) {
  die("unshare(CLONE_NEWNS) failed: %s\n",
   strerror(errno));
 }

 if (mount("testing", "/tmp", fstype, mount_flags, mount_options) != 0) {
  die("mount of %s with options '%s' on /tmp failed: %s\n",
      fstype,
      mount_options? mount_options : "",
      strerror(errno));
 }

 create_and_enter_userns();

 if (unshare(CLONE_NEWNS) != 0) {
  die("unshare(CLONE_NEWNS) failed: %s\n",
   strerror(errno));
 }

 if (mount("/tmp", "/tmp", "none",
    MS_REMOUNT | MS_BIND | remount_flags, ((void*)0)) != 0) {

  die("remount of /tmp failed: %s\n",
      strerror(errno));
 }

 if (mount("/tmp", "/tmp", "none",
    MS_REMOUNT | MS_BIND | invalid_flags, ((void*)0)) == 0) {

  die("remount of /tmp with invalid flags "
      "succeeded unexpectedly\n");
 }
 exit(EXIT_SUCCESS);
}
