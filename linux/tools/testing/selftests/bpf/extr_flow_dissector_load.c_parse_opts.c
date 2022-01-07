
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_attach ;
 void* cfg_path_name ;
 void* cfg_section_name ;
 int error (int,int ,char*) ;
 int getopt (int,char**,char*) ;
 void* optarg ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 bool attach = 0;
 bool detach = 0;
 int c;

 while ((c = getopt(argc, argv, "adp:s:")) != -1) {
  switch (c) {
  case 'a':
   if (detach)
    error(1, 0, "attach/detach are exclusive");
   attach = 1;
   break;
  case 'd':
   if (attach)
    error(1, 0, "attach/detach are exclusive");
   detach = 1;
   break;
  case 'p':
   if (cfg_path_name)
    error(1, 0, "only one prog name can be given");

   cfg_path_name = optarg;
   break;
  case 's':
   if (cfg_section_name)
    error(1, 0, "only one section can be given");

   cfg_section_name = optarg;
   break;
  }
 }

 if (detach)
  cfg_attach = 0;

 if (cfg_attach && !cfg_path_name)
  error(1, 0, "must provide a path to the BPF program");

 if (cfg_attach && !cfg_section_name)
  error(1, 0, "must provide a section name");
}
