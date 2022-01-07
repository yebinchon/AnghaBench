
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static inline unsigned int tdb_hash(const char *name)
{
 unsigned value;
 unsigned i;


 for (value = 0x238F13AF * strlen(name), i = 0; name[i]; i++)
  value = (value + (((unsigned char *)name)[i] << (i*5 % 24)));

 return (1103515243 * value + 12345);
}
