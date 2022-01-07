
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline size_t audit_pack_string(void **bufp, const char *str)
{
 size_t len = strlen(str);

 memcpy(*bufp, str, len);
 *bufp += len;

 return len;
}
