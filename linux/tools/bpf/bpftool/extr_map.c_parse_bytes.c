
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_prefix (char*,char*) ;
 int p_err (char*,char const*,...) ;
 unsigned char strtoul (char*,char**,unsigned int) ;

__attribute__((used)) static char **parse_bytes(char **argv, const char *name, unsigned char *val,
     unsigned int n)
{
 unsigned int i = 0, base = 0;
 char *endptr;

 if (is_prefix(*argv, "hex")) {
  base = 16;
  argv++;
 }

 while (i < n && argv[i]) {
  val[i] = strtoul(argv[i], &endptr, base);
  if (*endptr) {
   p_err("error parsing byte: %s", argv[i]);
   return ((void*)0);
  }
  i++;
 }

 if (i != n) {
  p_err("%s expected %d bytes got %d", name, n, i);
  return ((void*)0);
 }

 return argv + i;
}
