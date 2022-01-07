
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_generic_request {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void get_generic_request(struct ceph_mon_generic_request *req)
{
 kref_get(&req->kref);
}
