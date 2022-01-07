
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int fprintf (int ,char*,char*) ;
 int isdigit (char) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 scalar_t__ strtol (char*,char**,int) ;
 int verbose ;

__attribute__((used)) static int
jit_detect(char *mmap_name, pid_t pid)
 {
 char *p;
 char *end = ((void*)0);
 pid_t pid2;

 if (verbose > 2)
  fprintf(stderr, "jit marker trying : %s\n", mmap_name);



 p = strrchr(mmap_name, '/');
 if (!p)
  return -1;




 if (strncmp(p, "/jit-", 5))
  return -1;




 p += 5;




 if (!isdigit(*p))
  return -1;

 pid2 = (int)strtol(p, &end, 10);
 if (!end)
  return -1;





 if (pid && pid2 != pid)
  return -1;



 if (strcmp(end, ".dump"))
  return -1;

 if (verbose > 0)
  fprintf(stderr, "jit marker found: %s\n", mmap_name);

 return 0;
}
