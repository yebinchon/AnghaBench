
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* strchr (unsigned char const*,char) ;
 int tomoyo_correct_path (unsigned char const*) ;
 int tomoyo_correct_word2 (unsigned char const*,int) ;
 int tomoyo_domain_def (unsigned char const*) ;

bool tomoyo_correct_domain(const unsigned char *domainname)
{
 if (!domainname || !tomoyo_domain_def(domainname))
  return 0;
 domainname = strchr(domainname, ' ');
 if (!domainname++)
  return 1;
 while (1) {
  const unsigned char *cp = strchr(domainname, ' ');

  if (!cp)
   break;
  if (*domainname != '/' ||
      !tomoyo_correct_word2(domainname, cp - domainname))
   return 0;
  domainname = cp + 1;
 }
 return tomoyo_correct_path(domainname);
}
