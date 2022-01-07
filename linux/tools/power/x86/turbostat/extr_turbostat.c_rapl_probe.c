
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ authentic_amd ;
 scalar_t__ genuine_intel ;
 scalar_t__ hygon_genuine ;
 int rapl_probe_amd (unsigned int,unsigned int) ;
 int rapl_probe_intel (unsigned int,unsigned int) ;

void rapl_probe(unsigned int family, unsigned int model)
{
 if (genuine_intel)
  rapl_probe_intel(family, model);
 if (authentic_amd || hygon_genuine)
  rapl_probe_amd(family, model);
}
