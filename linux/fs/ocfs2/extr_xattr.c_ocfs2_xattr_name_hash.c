
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_sb; } ;
typedef int hash ;
struct TYPE_2__ {int uuid_hash; } ;


 int OCFS2_HASH_SHIFT ;
 TYPE_1__* OCFS2_SB (int ) ;

__attribute__((used)) static u32 ocfs2_xattr_name_hash(struct inode *inode,
     const char *name,
     int name_len)
{

 u32 hash = OCFS2_SB(inode->i_sb)->uuid_hash;
 int i;


 for (i = 0; i < name_len; i++) {
  hash = (hash << OCFS2_HASH_SHIFT) ^
         (hash >> (8*sizeof(hash) - OCFS2_HASH_SHIFT)) ^
         *name++;
 }

 return hash;
}
