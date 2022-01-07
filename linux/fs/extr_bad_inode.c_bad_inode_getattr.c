
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dummy; } ;
struct kstat {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_inode_getattr(const struct path *path, struct kstat *stat,
        u32 request_mask, unsigned int query_flags)
{
 return -EIO;
}
