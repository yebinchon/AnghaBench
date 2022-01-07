
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* caseorder ;

int hfs_strcmp(const unsigned char *s1, unsigned int len1,
        const unsigned char *s2, unsigned int len2)
{
 int len, tmp;

 len = (len1 > len2) ? len2 : len1;

 while (len--) {
  tmp = (int)caseorder[*(s1++)] - (int)caseorder[*(s2++)];
  if (tmp)
   return tmp;
 }
 return len1 - len2;
}
