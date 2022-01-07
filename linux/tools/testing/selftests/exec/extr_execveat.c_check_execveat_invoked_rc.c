
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int argv ;
 int envp ;
 int errno ;
 int execveat_ (int,char const*,int ,int ,int) ;
 int exit (int) ;
 int fork () ;
 int printf (char*,...) ;
 char* strerror (int) ;
 int strlen (char const*) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int check_execveat_invoked_rc(int fd, const char *path, int flags,
         int expected_rc, int expected_rc2)
{
 int status;
 int rc;
 pid_t child;
 int pathlen = path ? strlen(path) : 0;

 if (pathlen > 40)
  printf("Check success of execveat(%d, '%.20s...%s', %d)... ",
   fd, path, (path + pathlen - 20), flags);
 else
  printf("Check success of execveat(%d, '%s', %d)... ",
   fd, path?:"(null)", flags);
 child = fork();
 if (child < 0) {
  printf("[FAIL] (fork() failed)\n");
  return 1;
 }
 if (child == 0) {

  rc = execveat_(fd, path, argv, envp, flags);
  printf("[FAIL]: execveat() failed, rc=%d errno=%d (%s)\n",
   rc, errno, strerror(errno));
  exit(1);
 }

 rc = waitpid(child, &status, 0);
 if (rc != child) {
  printf("[FAIL] (waitpid(%d,...) returned %d)\n", child, rc);
  return 1;
 }
 if (!WIFEXITED(status)) {
  printf("[FAIL] (child %d did not exit cleanly, status=%08x)\n",
   child, status);
  return 1;
 }
 if ((WEXITSTATUS(status) != expected_rc) &&
     (WEXITSTATUS(status) != expected_rc2)) {
  printf("[FAIL] (child %d exited with %d not %d nor %d)\n",
   child, WEXITSTATUS(status), expected_rc, expected_rc2);
  return 1;
 }
 printf("[OK]\n");
 return 0;
}
