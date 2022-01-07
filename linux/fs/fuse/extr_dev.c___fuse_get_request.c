
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int count; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void __fuse_get_request(struct fuse_req *req)
{
 refcount_inc(&req->count);
}
