
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jhash (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static u32 nft_chain_hash(const void *data, u32 len, u32 seed)
{
 const char *name = data;

 return jhash(name, strlen(name), seed);
}
