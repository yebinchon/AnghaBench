
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fuse_conn {int attr_version; } ;


 int atomic64_read (int *) ;

__attribute__((used)) static inline u64 fuse_get_attr_version(struct fuse_conn *fc)
{
 return atomic64_read(&fc->attr_version);
}
