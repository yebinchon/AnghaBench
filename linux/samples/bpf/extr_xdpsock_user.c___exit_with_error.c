
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int dump_stats () ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*,char const*,int,int,char*) ;
 int remove_xdp_program () ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void __exit_with_error(int error, const char *file, const char *func,
         int line)
{
 fprintf(stderr, "%s:%s:%i: errno: %d/\"%s\"\n", file, func,
  line, error, strerror(error));
 dump_stats();
 remove_xdp_program();
 exit(EXIT_FAILURE);
}
