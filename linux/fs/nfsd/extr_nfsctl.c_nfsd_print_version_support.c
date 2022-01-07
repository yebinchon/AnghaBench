
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int dummy; } ;
typedef int ssize_t ;


 int NFSD_TEST ;
 int nfsd_minorversion (struct nfsd_net*,int,int ) ;
 int nfsd_vers (struct nfsd_net*,unsigned int,int ) ;
 int snprintf (char*,int,char const*,char const*,char,unsigned int,int) ;

__attribute__((used)) static ssize_t
nfsd_print_version_support(struct nfsd_net *nn, char *buf, int remaining,
  const char *sep, unsigned vers, int minor)
{
 const char *format = minor < 0 ? "%s%c%u" : "%s%c%u.%u";
 bool supported = !!nfsd_vers(nn, vers, NFSD_TEST);

 if (vers == 4 && minor >= 0 &&
     !nfsd_minorversion(nn, minor, NFSD_TEST))
  supported = 0;
 if (minor == 0 && supported)





  return 0;
 return snprintf(buf, remaining, format, sep,
   supported ? '+' : '-', vers, minor);
}
