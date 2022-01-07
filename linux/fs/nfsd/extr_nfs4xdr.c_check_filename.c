
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 scalar_t__ isdotent (char*,int) ;
 int nfserr_badname ;
 int nfserr_inval ;

__attribute__((used)) static __be32
check_filename(char *str, int len)
{
 int i;

 if (len == 0)
  return nfserr_inval;
 if (isdotent(str, len))
  return nfserr_badname;
 for (i = 0; i < len; i++)
  if (str[i] == '/')
   return nfserr_badname;
 return 0;
}
