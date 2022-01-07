
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;

__attribute__((used)) static inline int namecompare(int len, int maxlen,
 const char * name, const char * buffer)
{
 if (len < maxlen && buffer[len])
  return 0;
 return !memcmp(name, buffer, len);
}
