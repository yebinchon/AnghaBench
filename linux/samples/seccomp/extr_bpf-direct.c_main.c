
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int __NR_read ;
 int __NR_write ;
 scalar_t__ install_emulator () ;
 scalar_t__ install_filter () ;
 int payload (char*) ;
 int syscall (int ,int ,char*,...) ;

int main(int argc, char **argv)
{
 char buf[4096];
 ssize_t bytes = 0;
 if (install_emulator())
  return 1;
 if (install_filter())
  return 1;
 syscall(__NR_write, STDOUT_FILENO,
  payload("OHAI! WHAT IS YOUR NAME? "));
 bytes = syscall(__NR_read, STDIN_FILENO, buf, sizeof(buf));
 syscall(__NR_write, STDOUT_FILENO, payload("HELLO, "));
 syscall(__NR_write, STDOUT_FILENO, buf, bytes);
 syscall(__NR_write, STDERR_FILENO,
  payload("Error message going to STDERR\n"));
 return 0;
}
