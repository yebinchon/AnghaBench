
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOBUFS ;
 int PVR_REV (unsigned long) ;
 int PVR_VER (unsigned long) ;
 int SPRN_PVR ;
 unsigned long mfspr (int ) ;
 int scnprintf (char*,size_t,char*,int ,int ) ;
 scalar_t__ strchr (char*,char) ;

int
get_cpuid(char *buffer, size_t sz)
{
 unsigned long pvr;
 int nb;

 pvr = mfspr(SPRN_PVR);

 nb = scnprintf(buffer, sz, "%lu,%lu$", PVR_VER(pvr), PVR_REV(pvr));


 if (strchr(buffer, '$')) {
  buffer[nb-1] = '\0';
  return 0;
 }
 return ENOBUFS;
}
