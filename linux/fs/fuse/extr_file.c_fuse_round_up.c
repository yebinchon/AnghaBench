
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int max_pages; } ;
typedef int loff_t ;


 int PAGE_SHIFT ;
 int round_up (int ,int) ;

__attribute__((used)) static inline loff_t fuse_round_up(struct fuse_conn *fc, loff_t off)
{
 return round_up(off, fc->max_pages << PAGE_SHIFT);
}
