
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct p9_fd_opts {int port; int rfd; int wfd; int privport; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;
 int Opt_err ;




 int P9_DEBUG_ERROR ;
 int P9_PORT ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int p9_debug (int ,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_opts(char *params, struct p9_fd_opts *opts)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 char *options, *tmp_options;

 opts->port = P9_PORT;
 opts->rfd = ~0;
 opts->wfd = ~0;
 opts->privport = 0;

 if (!params)
  return 0;

 tmp_options = kstrdup(params, GFP_KERNEL);
 if (!tmp_options) {
  p9_debug(P9_DEBUG_ERROR,
    "failed to allocate copy of option string\n");
  return -ENOMEM;
 }
 options = tmp_options;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  int r;
  if (!*p)
   continue;
  token = match_token(p, tokens, args);
  if ((token != Opt_err) && (token != 130)) {
   r = match_int(&args[0], &option);
   if (r < 0) {
    p9_debug(P9_DEBUG_ERROR,
      "integer field, but no integer?\n");
    continue;
   }
  }
  switch (token) {
  case 131:
   opts->port = option;
   break;
  case 129:
   opts->rfd = option;
   break;
  case 128:
   opts->wfd = option;
   break;
  case 130:
   opts->privport = 1;
   break;
  default:
   continue;
  }
 }

 kfree(tmp_options);
 return 0;
}
