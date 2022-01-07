
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_fn_t ;
typedef int FILE ;


 int * config_file ;
 scalar_t__ config_file_eof ;
 char const* config_file_name ;
 int config_linenr ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int perf_parse_file (int ,void*) ;

__attribute__((used)) static int perf_config_from_file(config_fn_t fn, const char *filename, void *data)
{
 int ret;
 FILE *f = fopen(filename, "r");

 ret = -1;
 if (f) {
  config_file = f;
  config_file_name = filename;
  config_linenr = 1;
  config_file_eof = 0;
  ret = perf_parse_file(fn, data);
  fclose(f);
  config_file_name = ((void*)0);
 }
 return ret;
}
