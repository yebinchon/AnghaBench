
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int prepend(char **buffer, int buflen, const char *str, int namelen)
{
 buflen -= namelen;
 if (buflen < 0)
  return -ENAMETOOLONG;
 *buffer -= namelen;
 memcpy(*buffer, str, namelen);
 return 0;
}
