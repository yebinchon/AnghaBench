
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qstr {int len; int name; } ;


 int ENAMETOOLONG ;
 scalar_t__ READ_ONCE (int ) ;
 char* smp_load_acquire (int *) ;

__attribute__((used)) static int prepend_name(char **buffer, int *buflen, const struct qstr *name)
{
 const char *dname = smp_load_acquire(&name->name);
 u32 dlen = READ_ONCE(name->len);
 char *p;

 *buflen -= dlen + 1;
 if (*buflen < 0)
  return -ENAMETOOLONG;
 p = *buffer -= dlen + 1;
 *p++ = '/';
 while (dlen--) {
  char c = *dname++;
  if (!c)
   break;
  *p++ = c;
 }
 return 0;
}
