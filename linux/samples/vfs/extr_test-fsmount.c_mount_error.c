
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_messages (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static __attribute__((noreturn))
void mount_error(int fd, const char *s)
{
 check_messages(fd);
 fprintf(stderr, "%s: %m\n", s);
 exit(1);
}
