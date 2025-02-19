
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct lm_lockstruct {int ls_first; int ls_jid; struct lm_lockops const* ls_ops; } ;
struct lm_lockops {int (* lm_mount ) (struct gfs2_sbd*,char const*) ;int * lm_tokens; } ;
struct gfs2_args {int ar_localflocks; char* ar_hostdata; } ;
struct gfs2_sbd {char* sd_proto_name; char* sd_table_name; int sd_locking_init; int sd_flags; struct gfs2_args sd_args; struct lm_lockstruct sd_lockstruct; } ;


 int EINVAL ;
 int ENOENT ;
 int MAX_OPT_ARGS ;





 int SDF_NOJOURNALID ;
 int complete_all (int *) ;
 int fs_info (struct gfs2_sbd*,char*,...) ;
 struct lm_lockops gfs2_dlm_ops ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 struct lm_lockops nolock_ops ;
 int pr_info (char*,char const*) ;
 int strcmp (char*,char const*) ;
 char* strsep (char**,char*) ;
 int stub1 (struct gfs2_sbd*,char const*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int gfs2_lm_mount(struct gfs2_sbd *sdp, int silent)
{
 const struct lm_lockops *lm;
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 struct gfs2_args *args = &sdp->sd_args;
 const char *proto = sdp->sd_proto_name;
 const char *table = sdp->sd_table_name;
 char *o, *options;
 int ret;

 if (!strcmp("lock_nolock", proto)) {
  lm = &nolock_ops;
  sdp->sd_args.ar_localflocks = 1;




 } else {
  pr_info("can't find protocol %s\n", proto);
  return -ENOENT;
 }

 fs_info(sdp, "Trying to join cluster \"%s\", \"%s\"\n", proto, table);

 ls->ls_ops = lm;
 ls->ls_first = 1;

 for (options = args->ar_hostdata; (o = strsep(&options, ":")); ) {
  substring_t tmp[MAX_OPT_ARGS];
  int token, option;

  if (!o || !*o)
   continue;

  token = match_token(o, *lm->lm_tokens, tmp);
  switch (token) {
  case 129:
   ret = match_int(&tmp[0], &option);
   if (ret || option < 0)
    goto hostdata_error;
   if (test_and_clear_bit(SDF_NOJOURNALID, &sdp->sd_flags))
    ls->ls_jid = option;
   break;
  case 130:
  case 128:

   break;
  case 131:
   ret = match_int(&tmp[0], &option);
   if (ret || (option != 0 && option != 1))
    goto hostdata_error;
   ls->ls_first = option;
   break;
  case 132:
  default:
hostdata_error:
   fs_info(sdp, "unknown hostdata (%s)\n", o);
   return -EINVAL;
  }
 }

 if (lm->lm_mount == ((void*)0)) {
  fs_info(sdp, "Now mounting FS...\n");
  complete_all(&sdp->sd_locking_init);
  return 0;
 }
 ret = lm->lm_mount(sdp, table);
 if (ret == 0)
  fs_info(sdp, "Joined cluster. Now mounting FS...\n");
 complete_all(&sdp->sd_locking_init);
 return ret;
}
