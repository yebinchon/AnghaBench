
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int unlink (char const*) ;

__attribute__((used)) static void fs_something(void)
{
 const char *test_file_name = "temp-perf-code-reading-test-file--";
 FILE *f;
 int i;

 for (i = 0; i < 1000; i++) {
  f = fopen(test_file_name, "w+");
  if (f) {
   fclose(f);
   unlink(test_file_name);
  }
 }
}
