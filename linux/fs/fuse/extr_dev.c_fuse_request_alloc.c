
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int dummy; } ;
typedef int gfp_t ;


 int fuse_req_cachep ;
 int fuse_request_init (struct fuse_req*) ;
 struct fuse_req* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct fuse_req *fuse_request_alloc(gfp_t flags)
{
 struct fuse_req *req = kmem_cache_zalloc(fuse_req_cachep, flags);
 if (req)
  fuse_request_init(req);

 return req;
}
