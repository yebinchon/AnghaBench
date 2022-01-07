
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {int use_clockid; int clockid_res_ns; int clockid; } ;
struct option {scalar_t__ value; } ;
struct clockid_map {int clockid; scalar_t__ name; } ;


 struct clockid_map* clockids ;
 int get_clockid_res (int ,int *) ;
 int sscanf (char const*,char*,int *) ;
 int strcasecmp (char const*,scalar_t__) ;
 int strncasecmp (char const*,char*,int) ;
 int ui__warning (char*,char const*) ;

__attribute__((used)) static int parse_clockid(const struct option *opt, const char *str, int unset)
{
 struct record_opts *opts = (struct record_opts *)opt->value;
 const struct clockid_map *cm;
 const char *ostr = str;

 if (unset) {
  opts->use_clockid = 0;
  return 0;
 }


 if (!str)
  return 0;


 if (opts->use_clockid)
  return -1;

 opts->use_clockid = 1;


 if (sscanf(str, "%d", &opts->clockid) == 1)
  return get_clockid_res(opts->clockid, &opts->clockid_res_ns);


 if (!strncasecmp(str, "CLOCK_", 6))
  str += 6;

 for (cm = clockids; cm->name; cm++) {
  if (!strcasecmp(str, cm->name)) {
   opts->clockid = cm->clockid;
   return get_clockid_res(opts->clockid,
            &opts->clockid_res_ns);
  }
 }

 opts->use_clockid = 0;
 ui__warning("unknown clockid %s, check man page\n", ostr);
 return -1;
}
