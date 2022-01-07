
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_generic_request {int kref; } ;


 int kref_put (int *,int ) ;
 int release_generic_request ;

__attribute__((used)) static void put_generic_request(struct ceph_mon_generic_request *req)
{
 if (req)
  kref_put(&req->kref, release_generic_request);
}
