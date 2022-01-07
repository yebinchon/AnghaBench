
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_generic_request {int dummy; } ;


 int __finish_generic_request (struct ceph_mon_generic_request*) ;
 int put_generic_request (struct ceph_mon_generic_request*) ;

__attribute__((used)) static void finish_generic_request(struct ceph_mon_generic_request *req)
{
 __finish_generic_request(req);
 put_generic_request(req);
}
