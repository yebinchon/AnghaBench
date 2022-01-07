
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int close (int) ;
 int exe_cp (char*,char*) ;
 int mkdir (char*,int) ;
 int open (char*,int,int) ;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;

__attribute__((used)) static void prerequisites(void)
{
 int fd;
 const char *script = "#!/bin/sh\nexit $*\n";


 exe_cp("execveat", "execveat.ephemeral");
 exe_cp("execveat", "execveat.path.ephemeral");
 exe_cp("script", "script.ephemeral");
 mkdir("subdir.ephemeral", 0755);

 fd = open("subdir.ephemeral/script", O_RDWR|O_CREAT|O_TRUNC, 0755);
 write(fd, script, strlen(script));
 close(fd);
}
