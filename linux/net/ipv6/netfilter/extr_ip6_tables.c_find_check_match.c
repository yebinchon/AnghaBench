
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_mtchk_param {int dummy; } ;
struct xt_match {int me; } ;
struct TYPE_5__ {struct xt_match* match; } ;
struct TYPE_4__ {int revision; int name; } ;
struct TYPE_6__ {TYPE_2__ kernel; TYPE_1__ user; } ;
struct xt_entry_match {TYPE_3__ u; } ;


 scalar_t__ IS_ERR (struct xt_match*) ;
 int NFPROTO_IPV6 ;
 int PTR_ERR (struct xt_match*) ;
 int check_match (struct xt_entry_match*,struct xt_mtchk_param*) ;
 int module_put (int ) ;
 struct xt_match* xt_request_find_match (int ,int ,int ) ;

__attribute__((used)) static int
find_check_match(struct xt_entry_match *m, struct xt_mtchk_param *par)
{
 struct xt_match *match;
 int ret;

 match = xt_request_find_match(NFPROTO_IPV6, m->u.user.name,
          m->u.user.revision);
 if (IS_ERR(match))
  return PTR_ERR(match);

 m->u.kernel.match = match;

 ret = check_match(m, par);
 if (ret)
  goto err;

 return 0;
err:
 module_put(m->u.kernel.match->me);
 return ret;
}
