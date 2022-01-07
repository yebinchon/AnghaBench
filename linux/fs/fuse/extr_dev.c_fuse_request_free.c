
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int dummy; } ;


 int fuse_req_cachep ;
 int kmem_cache_free (int ,struct fuse_req*) ;

__attribute__((used)) static void fuse_request_free(struct fuse_req *req)
{
 kmem_cache_free(fuse_req_cachep, req);
}
