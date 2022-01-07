
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strim (char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static inline const char *basename(const char *hname)
{
 char *split;

 hname = strim((char *)hname);
 for (split = strstr(hname, "//"); split; split = strstr(hname, "//"))
  hname = split + 2;

 return hname;
}
