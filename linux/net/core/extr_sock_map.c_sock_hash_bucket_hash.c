
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jhash (void const*,int ,int ) ;

__attribute__((used)) static inline u32 sock_hash_bucket_hash(const void *key, u32 len)
{
 return jhash(key, len, 0);
}
