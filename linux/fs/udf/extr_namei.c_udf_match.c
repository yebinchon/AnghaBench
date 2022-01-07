
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (unsigned char const*,unsigned char const*,int) ;

__attribute__((used)) static inline int udf_match(int len1, const unsigned char *name1, int len2,
       const unsigned char *name2)
{
 if (len1 != len2)
  return 0;

 return !memcmp(name1, name2, len1);
}
