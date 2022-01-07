
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check (char const*,int) ;
 int check_options ;
 int orc_dump (char const*) ;
 int orc_usage ;
 int parse_options (int,char const**,int ,int ,int ) ;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;
 int usage_with_options (int ,int ) ;

int cmd_orc(int argc, const char **argv)
{
 const char *objname;

 argc--; argv++;
 if (argc <= 0)
  usage_with_options(orc_usage, check_options);

 if (!strncmp(argv[0], "gen", 3)) {
  argc = parse_options(argc, argv, check_options, orc_usage, 0);
  if (argc != 1)
   usage_with_options(orc_usage, check_options);

  objname = argv[0];

  return check(objname, 1);
 }

 if (!strcmp(argv[0], "dump")) {
  if (argc != 2)
   usage_with_options(orc_usage, check_options);

  objname = argv[1];

  return orc_dump(objname);
 }

 usage_with_options(orc_usage, check_options);

 return 0;
}
