
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_uid; scalar_t__ st_size; } ;
struct perf_config_set {int dummy; } ;


 scalar_t__ ENOENT ;
 int R_OK ;
 int access (char*,int ) ;
 int collect_config ;
 char* config_exclusive_filename ;
 scalar_t__ errno ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 int mkpath (char*,char const*) ;
 int perf_config_from_file (int ,char*,struct perf_config_set*) ;
 int perf_config_global () ;
 scalar_t__ perf_config_system () ;
 char* perf_etc_perfconfig () ;
 int pr_warning (char*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strdup (int ) ;

__attribute__((used)) static int perf_config_set__init(struct perf_config_set *set)
{
 int ret = -1;
 const char *home = ((void*)0);
 char *user_config;
 struct stat st;


 if (config_exclusive_filename)
  return perf_config_from_file(collect_config, config_exclusive_filename, set);
 if (perf_config_system() && !access(perf_etc_perfconfig(), R_OK)) {
  if (perf_config_from_file(collect_config, perf_etc_perfconfig(), set) < 0)
   goto out;
 }

 home = getenv("HOME");






 if (!home || !*home || !perf_config_global())
  return 0;

 user_config = strdup(mkpath("%s/.perfconfig", home));
 if (user_config == ((void*)0)) {
  pr_warning("Not enough memory to process %s/.perfconfig, ignoring it.", home);
  goto out;
 }

 if (stat(user_config, &st) < 0) {
  if (errno == ENOENT)
   ret = 0;
  goto out_free;
 }

 ret = 0;

 if (st.st_uid && (st.st_uid != geteuid())) {
  pr_warning("File %s not owned by current user or root, ignoring it.", user_config);
  goto out_free;
 }

 if (st.st_size)
  ret = perf_config_from_file(collect_config, user_config, set);

out_free:
 free(user_config);
out:
 return ret;
}
