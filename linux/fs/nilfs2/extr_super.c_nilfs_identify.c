
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct nilfs_super_data {int dummy; } ;


 int BUG_ON (int) ;
 int MAX_OPT_ARGS ;
 int Opt_snapshot ;
 int match_token (char*,int ,int *) ;
 int nilfs_parse_snapshot_option (char*,int *,struct nilfs_super_data*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int nilfs_identify(char *data, struct nilfs_super_data *sd)
{
 char *p, *options = data;
 substring_t args[MAX_OPT_ARGS];
 int token;
 int ret = 0;

 do {
  p = strsep(&options, ",");
  if (p != ((void*)0) && *p) {
   token = match_token(p, tokens, args);
   if (token == Opt_snapshot)
    ret = nilfs_parse_snapshot_option(p, &args[0],
          sd);
  }
  if (!options)
   break;
  BUG_ON(options == data);
  *(options - 1) = ',';
 } while (!ret);
 return ret;
}
