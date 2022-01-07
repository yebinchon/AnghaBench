
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jhash (char const* const,int ,int ) ;
 int strlen (char const* const) ;

__attribute__((used)) static u32 strhash(const void *data, u32 len, u32 seed)
{
 const char * const *key = data;

 return jhash(*key, strlen(*key), seed);
}
