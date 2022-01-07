
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {scalar_t__ blocked; int initialized; } ;



__attribute__((used)) static bool fuse_block_alloc(struct fuse_conn *fc, bool for_background)
{
 return !fc->initialized || (for_background && fc->blocked);
}
