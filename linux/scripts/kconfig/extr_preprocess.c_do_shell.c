
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int exit (int) ;
 size_t fread (char*,int,int,int *) ;
 int pclose (int *) ;
 int perror (char*) ;
 int * popen (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *do_shell(int argc, char *argv[])
{
 FILE *p;
 char buf[256];
 char *cmd;
 size_t nread;
 int i;

 cmd = argv[0];

 p = popen(cmd, "r");
 if (!p) {
  perror(cmd);
  exit(1);
 }

 nread = fread(buf, 1, sizeof(buf), p);
 if (nread == sizeof(buf))
  nread--;


 while (nread > 0 && buf[nread - 1] == '\n')
  nread--;

 buf[nread] = 0;


 for (i = 0; i < nread; i++) {
  if (buf[i] == '\n')
   buf[i] = ' ';
 }

 if (pclose(p) == -1) {
  perror(cmd);
  exit(1);
 }

 return xstrdup(buf);
}
