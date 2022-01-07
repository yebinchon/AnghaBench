
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_long_running ;
 int cfg_verbose ;
 int error (int,int ,char*,char*) ;
 int getopt (int,char**,char*) ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 int c;

 while ((c = getopt(argc, argv, "lv")) != -1) {
  switch (c) {
  case 'l':
   cfg_long_running = 1;
   break;
  case 'v':
   cfg_verbose = 1;
   break;
  default:
   error(1, 0, "%s: parse error", argv[0]);
  }
 }
}
