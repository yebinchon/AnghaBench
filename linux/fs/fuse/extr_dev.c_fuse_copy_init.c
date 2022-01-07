
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;
struct fuse_copy_state {int write; struct iov_iter* iter; } ;


 int memset (struct fuse_copy_state*,int ,int) ;

__attribute__((used)) static void fuse_copy_init(struct fuse_copy_state *cs, int write,
      struct iov_iter *iter)
{
 memset(cs, 0, sizeof(*cs));
 cs->write = write;
 cs->iter = iter;
}
