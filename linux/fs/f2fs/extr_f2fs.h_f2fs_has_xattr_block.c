
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XATTR_NODE_OFFSET ;

__attribute__((used)) static inline bool f2fs_has_xattr_block(unsigned int ofs)
{
 return ofs == XATTR_NODE_OFFSET;
}
