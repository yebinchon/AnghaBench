
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int newest; } ;
struct ceph_mon_generic_request {TYPE_1__ u; } ;
struct ceph_mon_client {int dummy; } ;


 scalar_t__ IS_ERR (struct ceph_mon_generic_request*) ;
 int PTR_ERR (struct ceph_mon_generic_request*) ;
 struct ceph_mon_generic_request* __ceph_monc_get_version (struct ceph_mon_client*,char const*,int *,int ) ;
 int put_generic_request (struct ceph_mon_generic_request*) ;
 int wait_generic_request (struct ceph_mon_generic_request*) ;

int ceph_monc_get_version(struct ceph_mon_client *monc, const char *what,
     u64 *newest)
{
 struct ceph_mon_generic_request *req;
 int ret;

 req = __ceph_monc_get_version(monc, what, ((void*)0), 0);
 if (IS_ERR(req))
  return PTR_ERR(req);

 ret = wait_generic_request(req);
 if (!ret)
  *newest = req->u.newest;

 put_generic_request(req);
 return ret;
}
