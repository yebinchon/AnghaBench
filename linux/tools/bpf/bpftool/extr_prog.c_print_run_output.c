
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fwrite (void*,int,unsigned int,int *) ;
 int hex_print (void*,unsigned int,int *) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_name (int ,char const*) ;
 int p_err (char*,char const*,...) ;
 int print_data_json (void*,unsigned int) ;
 int * stdout ;
 int strcmp (char const*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static int
print_run_output(void *data, unsigned int size, const char *fname,
   const char *json_key)
{
 size_t nb_written;
 FILE *f;

 if (!fname)
  return 0;

 if (!strcmp(fname, "-")) {
  f = stdout;
  if (json_output) {
   jsonw_name(json_wtr, json_key);
   print_data_json(data, size);
  } else {
   hex_print(data, size, f);
  }
  return 0;
 }

 f = fopen(fname, "w");
 if (!f) {
  p_err("failed to open %s: %s", fname, strerror(errno));
  return -1;
 }

 nb_written = fwrite(data, 1, size, f);
 fclose(f);
 if (nb_written != size) {
  p_err("failed to write output data/ctx: %s", strerror(errno));
  return -1;
 }

 return 0;
}
