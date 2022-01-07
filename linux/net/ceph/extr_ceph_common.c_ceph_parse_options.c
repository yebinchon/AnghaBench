
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* from; char const* to; } ;
typedef TYPE_1__ substring_t ;
struct ceph_options {int flags; void* osd_request_timeout; void* mount_timeout; void* osd_idle_ttl; void* osd_keepalive_timeout; void* key; void* name; int fsid; int my_addr; int num_mon; int * mon_addr; } ;


 int BUG_ON (int) ;
 int CEPH_MAX_MON ;
 void* CEPH_MOUNT_TIMEOUT_DEFAULT ;
 int CEPH_OPT_ABORT_ON_FULL ;
 int CEPH_OPT_DEFAULT ;
 int CEPH_OPT_FSID ;
 int CEPH_OPT_MYIP ;
 int CEPH_OPT_NOCRC ;
 int CEPH_OPT_NOMSGAUTH ;
 int CEPH_OPT_NOMSGSIGN ;
 int CEPH_OPT_NOSHARE ;
 int CEPH_OPT_TCP_NODELAY ;
 void* CEPH_OSD_IDLE_TTL_DEFAULT ;
 void* CEPH_OSD_KEEPALIVE_DEFAULT ;
 void* CEPH_OSD_REQUEST_TIMEOUT_DEFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct ceph_options* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INT_MAX ;
 int MAX_OPT_ARGS ;







 int Opt_last_int ;
 int Opt_last_string ;
 int ceph_crypto_key_destroy (void*) ;
 int ceph_crypto_key_unarmor (void*,char const*) ;
 int ceph_destroy_options (struct ceph_options*) ;
 int ceph_parse_ips (char const*,char const*,int *,int,int *) ;
 int dout (char*,...) ;
 int get_secret (void*,char const*) ;
 int * kcalloc (int,int,int ) ;
 int kfree (void*) ;
 void* kstrndup (char const*,char const*,int ) ;
 void* kzalloc (int,int ) ;
 int match_int (TYPE_1__*,int*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 void* msecs_to_jiffies (int) ;
 int opt_tokens ;
 int parse_fsid (char const*,int *) ;
 int pr_err (char*,...) ;
 int pr_warn (char*) ;
 char* strsep (char**,char*) ;

struct ceph_options *
ceph_parse_options(char *options, const char *dev_name,
   const char *dev_name_end,
   int (*parse_extra_token)(char *c, void *private),
   void *private)
{
 struct ceph_options *opt;
 const char *c;
 int err = -ENOMEM;
 substring_t argstr[MAX_OPT_ARGS];

 opt = kzalloc(sizeof(*opt), GFP_KERNEL);
 if (!opt)
  return ERR_PTR(-ENOMEM);
 opt->mon_addr = kcalloc(CEPH_MAX_MON, sizeof(*opt->mon_addr),
    GFP_KERNEL);
 if (!opt->mon_addr)
  goto out;

 dout("parse_options %p options '%s' dev_name '%s'\n", opt, options,
      dev_name);


 opt->flags = CEPH_OPT_DEFAULT;
 opt->osd_keepalive_timeout = CEPH_OSD_KEEPALIVE_DEFAULT;
 opt->mount_timeout = CEPH_MOUNT_TIMEOUT_DEFAULT;
 opt->osd_idle_ttl = CEPH_OSD_IDLE_TTL_DEFAULT;
 opt->osd_request_timeout = CEPH_OSD_REQUEST_TIMEOUT_DEFAULT;



 err = ceph_parse_ips(dev_name, dev_name_end, opt->mon_addr,
        CEPH_MAX_MON, &opt->num_mon);
 if (err < 0)
  goto out;


 while ((c = strsep(&options, ",")) != ((void*)0)) {
  int token, intval;
  if (!*c)
   continue;
  err = -EINVAL;
  token = match_token((char *)c, opt_tokens, argstr);
  if (token < 0 && parse_extra_token) {

   err = parse_extra_token((char *)c, private);
   if (err < 0) {
    pr_err("bad option at '%s'\n", c);
    goto out;
   }
   continue;
  }
  if (token < Opt_last_int) {
   err = match_int(&argstr[0], &intval);
   if (err < 0) {
    pr_err("bad option arg (not int) at '%s'\n", c);
    goto out;
   }
   dout("got int token %d val %d\n", token, intval);
  } else if (token > Opt_last_int && token < Opt_last_string) {
   dout("got string token %d val %s\n", token,
        argstr[0].from);
  } else {
   dout("got token %d\n", token);
  }
  switch (token) {
  case 143:
   err = ceph_parse_ips(argstr[0].from,
          argstr[0].to,
          &opt->my_addr,
          1, ((void*)0));
   if (err < 0)
    goto out;
   opt->flags |= CEPH_OPT_MYIP;
   break;

  case 144:
   err = parse_fsid(argstr[0].from, &opt->fsid);
   if (err == 0)
    opt->flags |= CEPH_OPT_FSID;
   break;
  case 140:
   kfree(opt->name);
   opt->name = kstrndup(argstr[0].from,
           argstr[0].to-argstr[0].from,
           GFP_KERNEL);
   if (!opt->name) {
    err = -ENOMEM;
    goto out;
   }
   break;
  case 130:
   ceph_crypto_key_destroy(opt->key);
   kfree(opt->key);

          opt->key = kzalloc(sizeof(*opt->key), GFP_KERNEL);
   if (!opt->key) {
    err = -ENOMEM;
    goto out;
   }
   err = ceph_crypto_key_unarmor(opt->key, argstr[0].from);
   if (err < 0)
    goto out;
   break;
  case 142:
   ceph_crypto_key_destroy(opt->key);
   kfree(opt->key);

          opt->key = kzalloc(sizeof(*opt->key), GFP_KERNEL);
   if (!opt->key) {
    err = -ENOMEM;
    goto out;
   }
   err = get_secret(opt->key, argstr[0].from);
   if (err < 0)
    goto out;
   break;


  case 131:
   pr_warn("ignoring deprecated osdtimeout option\n");
   break;
  case 132:

   if (intval < 1 || intval > INT_MAX / 1000) {
    pr_err("osdkeepalive out of range\n");
    err = -EINVAL;
    goto out;
   }
   opt->osd_keepalive_timeout =
     msecs_to_jiffies(intval * 1000);
   break;
  case 134:

   if (intval < 1 || intval > INT_MAX / 1000) {
    pr_err("osd_idle_ttl out of range\n");
    err = -EINVAL;
    goto out;
   }
   opt->osd_idle_ttl = msecs_to_jiffies(intval * 1000);
   break;
  case 141:

   if (intval < 0 || intval > INT_MAX / 1000) {
    pr_err("mount_timeout out of range\n");
    err = -EINVAL;
    goto out;
   }
   opt->mount_timeout = msecs_to_jiffies(intval * 1000);
   break;
  case 133:

   if (intval < 0 || intval > INT_MAX / 1000) {
    pr_err("osd_request_timeout out of range\n");
    err = -EINVAL;
    goto out;
   }
   opt->osd_request_timeout = msecs_to_jiffies(intval * 1000);
   break;

  case 129:
   opt->flags &= ~CEPH_OPT_NOSHARE;
   break;
  case 136:
   opt->flags |= CEPH_OPT_NOSHARE;
   break;

  case 145:
   opt->flags &= ~CEPH_OPT_NOCRC;
   break;
  case 137:
   opt->flags |= CEPH_OPT_NOCRC;
   break;

  case 147:
   opt->flags &= ~CEPH_OPT_NOMSGAUTH;
   break;
  case 139:
   opt->flags |= CEPH_OPT_NOMSGAUTH;
   break;
  case 146:
   opt->flags &= ~CEPH_OPT_NOMSGSIGN;
   break;
  case 138:
   opt->flags |= CEPH_OPT_NOMSGSIGN;
   break;

  case 128:
   opt->flags |= CEPH_OPT_TCP_NODELAY;
   break;
  case 135:
   opt->flags &= ~CEPH_OPT_TCP_NODELAY;
   break;

  case 148:
   opt->flags |= CEPH_OPT_ABORT_ON_FULL;
   break;

  default:
   BUG_ON(token);
  }
 }


 return opt;

out:
 ceph_destroy_options(opt);
 return ERR_PTR(err);
}
