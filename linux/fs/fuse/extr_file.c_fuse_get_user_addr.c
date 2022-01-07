
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {unsigned long iov_offset; TYPE_1__* iov; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;



__attribute__((used)) static inline unsigned long fuse_get_user_addr(const struct iov_iter *ii)
{
 return (unsigned long)ii->iov->iov_base + ii->iov_offset;
}
