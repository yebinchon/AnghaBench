
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbmix_name_map {int name; } ;


 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int
check_mapped_name(const struct usbmix_name_map *p, char *buf, int buflen)
{
 if (!p || !p->name)
  return 0;

 buflen--;
 return strlcpy(buf, p->name, buflen);
}
