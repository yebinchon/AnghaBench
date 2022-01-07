
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAT_HASH_BITS ;
 unsigned long hash_32 (int,int ) ;

__attribute__((used)) static inline unsigned long fat_dir_hash(int logstart)
{
 return hash_32(logstart, FAT_HASH_BITS);
}
