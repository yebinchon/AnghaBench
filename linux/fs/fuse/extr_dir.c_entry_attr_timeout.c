
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fuse_entry_out {int attr_valid_nsec; int attr_valid; } ;


 int time_to_jiffies (int ,int ) ;

u64 entry_attr_timeout(struct fuse_entry_out *o)
{
 return time_to_jiffies(o->attr_valid, o->attr_valid_nsec);
}
