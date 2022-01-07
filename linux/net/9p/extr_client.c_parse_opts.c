
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct p9_client {int proto_version; int msize; int * trans_mod; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;




 int P9_DEBUG_ERROR ;
 int get_protocol_version (char*) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int match_int (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int p9_debug (int ,char*) ;
 int p9_proto_2000L ;
 int p9_proto_legacy ;
 int pr_info (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int * v9fs_get_trans_by_name (char*) ;
 int v9fs_put_trans (int *) ;

__attribute__((used)) static int parse_opts(char *opts, struct p9_client *clnt)
{
 char *options, *tmp_options;
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 char *s;
 int ret = 0;

 clnt->proto_version = p9_proto_2000L;
 clnt->msize = 8192;

 if (!opts)
  return 0;

 tmp_options = kstrdup(opts, GFP_KERNEL);
 if (!tmp_options) {
  p9_debug(P9_DEBUG_ERROR,
    "failed to allocate copy of option string\n");
  return -ENOMEM;
 }
 options = tmp_options;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token, r;
  if (!*p)
   continue;
  token = match_token(p, tokens, args);
  switch (token) {
  case 130:
   r = match_int(&args[0], &option);
   if (r < 0) {
    p9_debug(P9_DEBUG_ERROR,
      "integer field, but no integer?\n");
    ret = r;
    continue;
   }
   if (option < 4096) {
    p9_debug(P9_DEBUG_ERROR,
      "msize should be at least 4k\n");
    ret = -EINVAL;
    continue;
   }
   clnt->msize = option;
   break;
  case 129:
   s = match_strdup(&args[0]);
   if (!s) {
    ret = -ENOMEM;
    p9_debug(P9_DEBUG_ERROR,
      "problem allocating copy of trans arg\n");
    goto free_and_return;
   }

   v9fs_put_trans(clnt->trans_mod);
   clnt->trans_mod = v9fs_get_trans_by_name(s);
   if (clnt->trans_mod == ((void*)0)) {
    pr_info("Could not find request transport: %s\n",
     s);
    ret = -EINVAL;
   }
   kfree(s);
   break;
  case 131:
   clnt->proto_version = p9_proto_legacy;
   break;
  case 128:
   s = match_strdup(&args[0]);
   if (!s) {
    ret = -ENOMEM;
    p9_debug(P9_DEBUG_ERROR,
      "problem allocating copy of version arg\n");
    goto free_and_return;
   }
   r = get_protocol_version(s);
   if (r < 0)
    ret = r;
   else
    clnt->proto_version = r;
   kfree(s);
   break;
  default:
   continue;
  }
 }

free_and_return:
 if (ret)
  v9fs_put_trans(clnt->trans_mod);
 kfree(tmp_options);
 return ret;
}
