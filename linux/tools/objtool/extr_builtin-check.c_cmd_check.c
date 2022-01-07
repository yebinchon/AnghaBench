
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check (char const*,int) ;
 int check_options ;
 int check_usage ;
 int parse_options (int,char const**,int ,int ,int ) ;
 int usage_with_options (int ,int ) ;

int cmd_check(int argc, const char **argv)
{
 const char *objname;

 argc = parse_options(argc, argv, check_options, check_usage, 0);

 if (argc != 1)
  usage_with_options(check_usage, check_options);

 objname = argv[0];

 return check(objname, 0);
}
