
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int FUSE_INT_REQ_BIT ;
 int FUSE_PQ_HASH_BITS ;
 unsigned int hash_long (int,int ) ;

__attribute__((used)) static unsigned int fuse_req_hash(u64 unique)
{
 return hash_long(unique & ~FUSE_INT_REQ_BIT, FUSE_PQ_HASH_BITS);
}
