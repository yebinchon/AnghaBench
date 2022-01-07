
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int flags; } ;
struct fuse_conn {int dummy; } ;
struct fuse_args {int nocreds; scalar_t__ force; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int ENOTCONN ;
 int FR_BACKGROUND ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int WARN_ON (int) ;
 int __set_bit (int ,int *) ;
 int fuse_args_to_req (struct fuse_req*,struct fuse_args*) ;
 struct fuse_req* fuse_get_req (struct fuse_conn*,int) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_req* fuse_request_alloc (int ) ;
 int fuse_request_queue_background (struct fuse_conn*,struct fuse_req*) ;

int fuse_simple_background(struct fuse_conn *fc, struct fuse_args *args,
       gfp_t gfp_flags)
{
 struct fuse_req *req;

 if (args->force) {
  WARN_ON(!args->nocreds);
  req = fuse_request_alloc(gfp_flags);
  if (!req)
   return -ENOMEM;
  __set_bit(FR_BACKGROUND, &req->flags);
 } else {
  WARN_ON(args->nocreds);
  req = fuse_get_req(fc, 1);
  if (IS_ERR(req))
   return PTR_ERR(req);
 }

 fuse_args_to_req(req, args);

 if (!fuse_request_queue_background(fc, req)) {
  fuse_put_request(fc, req);
  return -ENOTCONN;
 }

 return 0;
}
