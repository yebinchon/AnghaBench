
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_6__ {scalar_t__ expiry_time; scalar_t__ flags; } ;
struct unix_gid {TYPE_3__* gi; TYPE_1__ h; int uid; } ;
struct cache_head {int dummy; } ;
struct cache_detail {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_7__ {int * gid; } ;


 int EINVAL ;
 int ENOMEM ;
 int cache_put (struct cache_head*,struct cache_detail*) ;
 int current_user_ns () ;
 scalar_t__ get_expiry (char**) ;
 int get_int (char**,int*) ;
 int gid_valid (int ) ;
 TYPE_3__* groups_alloc (int) ;
 int groups_sort (TYPE_3__*) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int put_group_info (TYPE_3__*) ;
 struct cache_head* sunrpc_cache_update (struct cache_detail*,TYPE_1__*,TYPE_1__*,int ) ;
 int unix_gid_hash (int ) ;
 struct unix_gid* unix_gid_lookup (struct cache_detail*,int ) ;

__attribute__((used)) static int unix_gid_parse(struct cache_detail *cd,
   char *mesg, int mlen)
{

 int id;
 kuid_t uid;
 int gids;
 int rv;
 int i;
 int err;
 time_t expiry;
 struct unix_gid ug, *ugp;

 if (mesg[mlen - 1] != '\n')
  return -EINVAL;
 mesg[mlen-1] = 0;

 rv = get_int(&mesg, &id);
 if (rv)
  return -EINVAL;
 uid = make_kuid(current_user_ns(), id);
 ug.uid = uid;

 expiry = get_expiry(&mesg);
 if (expiry == 0)
  return -EINVAL;

 rv = get_int(&mesg, &gids);
 if (rv || gids < 0 || gids > 8192)
  return -EINVAL;

 ug.gi = groups_alloc(gids);
 if (!ug.gi)
  return -ENOMEM;

 for (i = 0 ; i < gids ; i++) {
  int gid;
  kgid_t kgid;
  rv = get_int(&mesg, &gid);
  err = -EINVAL;
  if (rv)
   goto out;
  kgid = make_kgid(current_user_ns(), gid);
  if (!gid_valid(kgid))
   goto out;
  ug.gi->gid[i] = kgid;
 }

 groups_sort(ug.gi);
 ugp = unix_gid_lookup(cd, uid);
 if (ugp) {
  struct cache_head *ch;
  ug.h.flags = 0;
  ug.h.expiry_time = expiry;
  ch = sunrpc_cache_update(cd,
      &ug.h, &ugp->h,
      unix_gid_hash(uid));
  if (!ch)
   err = -ENOMEM;
  else {
   err = 0;
   cache_put(ch, cd);
  }
 } else
  err = -ENOMEM;
 out:
 if (ug.gi)
  put_group_info(ug.gi);
 return err;
}
