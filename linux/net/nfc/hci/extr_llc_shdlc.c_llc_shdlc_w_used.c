
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int llc_shdlc_w_used(int ns, int dnr)
{
 int unack_count;

 if (dnr <= ns)
  unack_count = ns - dnr;
 else
  unack_count = 8 - dnr + ns;

 return unack_count;
}
