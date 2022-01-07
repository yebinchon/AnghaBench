
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int parse_dep_file (void*,char const*) ;
 void* read_file (char const*) ;
 int usage () ;
 int xprintf (char*,char const*,char const*) ;

int main(int argc, char *argv[])
{
 const char *depfile, *target, *cmdline;
 void *buf;

 if (argc != 4)
  usage();

 depfile = argv[1];
 target = argv[2];
 cmdline = argv[3];

 xprintf("cmd_%s := %s\n\n", target, cmdline);

 buf = read_file(depfile);
 parse_dep_file(buf, target);
 free(buf);

 return 0;
}
