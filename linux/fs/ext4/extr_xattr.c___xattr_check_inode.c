
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct ext4_xattr_ibody_header {scalar_t__ h_magic; } ;


 int EFSCORRUPTED ;
 int EXT4_XATTR_MAGIC ;
 int IFIRST (struct ext4_xattr_ibody_header*) ;
 int __ext4_error_inode (struct inode*,char const*,unsigned int,int ,char*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext4_xattr_check_entries (int ,void*,int ) ;

__attribute__((used)) static int
__xattr_check_inode(struct inode *inode, struct ext4_xattr_ibody_header *header,
    void *end, const char *function, unsigned int line)
{
 int error = -EFSCORRUPTED;

 if (end - (void *)header < sizeof(*header) + sizeof(u32) ||
     (header->h_magic != cpu_to_le32(EXT4_XATTR_MAGIC)))
  goto errout;
 error = ext4_xattr_check_entries(IFIRST(header), end, IFIRST(header));
errout:
 if (error)
  __ext4_error_inode(inode, function, line, 0,
       "corrupted in-inode xattr");
 return error;
}
