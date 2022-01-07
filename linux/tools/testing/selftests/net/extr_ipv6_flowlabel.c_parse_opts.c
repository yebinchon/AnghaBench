
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_label ;
 int error (int,int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int strtoul (int ,int *,int ) ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 int c;

 while ((c = getopt(argc, argv, "l:")) != -1) {
  switch (c) {
  case 'l':
   cfg_label = strtoul(optarg, ((void*)0), 0);
   break;
  default:
   error(1, 0, "%s: parse error", argv[0]);
  }
 }
}
