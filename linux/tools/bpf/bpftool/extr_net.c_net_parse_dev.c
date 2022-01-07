
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT_ARGP () ;
 int if_nametoindex (char*) ;
 scalar_t__ is_prefix (char*,char*) ;
 int p_err (char*,char*) ;

__attribute__((used)) static int net_parse_dev(int *argc, char ***argv)
{
 int ifindex;

 if (is_prefix(**argv, "dev")) {
  NEXT_ARGP();

  ifindex = if_nametoindex(**argv);
  if (!ifindex)
   p_err("invalid devname %s", **argv);

  NEXT_ARGP();
 } else {
  p_err("expected 'dev', got: '%s'?", **argv);
  return -1;
 }

 return ifindex;
}
