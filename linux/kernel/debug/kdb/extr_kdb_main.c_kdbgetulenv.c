
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_NOENVVALUE ;
 int KDB_NOTENV ;
 char* kdbgetenv (char const*) ;
 unsigned long simple_strtoul (char*,int *,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int kdbgetulenv(const char *match, unsigned long *value)
{
 char *ep;

 ep = kdbgetenv(match);
 if (!ep)
  return KDB_NOTENV;
 if (strlen(ep) == 0)
  return KDB_NOENVVALUE;

 *value = simple_strtoul(ep, ((void*)0), 0);

 return 0;
}
