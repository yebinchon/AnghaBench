
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int desc; } ;


 scalar_t__ strcasestr (int ,char const*) ;
 long strtoul (char const*,char**,int) ;

__attribute__((used)) static bool perf_test__matches(struct test *test, int curr, int argc, const char *argv[])
{
 int i;

 if (argc == 0)
  return 1;

 for (i = 0; i < argc; ++i) {
  char *end;
  long nr = strtoul(argv[i], &end, 10);

  if (*end == '\0') {
   if (nr == curr + 1)
    return 1;
   continue;
  }

  if (strcasestr(test->desc, argv[i]))
   return 1;
 }

 return 0;
}
