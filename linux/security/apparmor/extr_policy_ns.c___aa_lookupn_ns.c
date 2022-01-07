
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int sub_ns; } ;


 struct aa_ns* __aa_findn_ns (int *,char const*,size_t) ;
 char* strnstr (char const*,char*,size_t) ;

struct aa_ns *__aa_lookupn_ns(struct aa_ns *view, const char *hname, size_t n)
{
 struct aa_ns *ns = view;
 const char *split;

 for (split = strnstr(hname, "//", n); split;
      split = strnstr(hname, "//", n)) {
  ns = __aa_findn_ns(&ns->sub_ns, hname, split - hname);
  if (!ns)
   return ((void*)0);

  n -= split + 2 - hname;
  hname = split + 2;
 }

 if (n)
  return __aa_findn_ns(&ns->sub_ns, hname, n);
 return ((void*)0);
}
