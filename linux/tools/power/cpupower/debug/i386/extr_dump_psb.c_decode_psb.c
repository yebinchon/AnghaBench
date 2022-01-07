
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pst_header {scalar_t__ cpuid; int numpstates; int fsb; int startvid; int maxfid; } ;
struct psb_header {int version; int settlingtime; int numpst; int res1; int flags; } ;


 int decode_pst (char*,int) ;
 int fsb ;
 int printf (char*,int,...) ;
 scalar_t__ relevant ;
 int sgtc ;

__attribute__((used)) static
void decode_psb(char *p, int numpst)
{
 int i;
 struct psb_header *psb;
 struct pst_header *pst;

 psb = (struct psb_header*) p;

 if (psb->version != 0x12)
  return;

 printf("PSB version: %hhx flags: %hhx settling time %hhuus res1 %hhx num pst %hhu\n",
   psb->version,
   psb->flags,
   psb->settlingtime,
   psb->res1,
   psb->numpst);
 sgtc = psb->settlingtime * 100;

 if (sgtc < 10000)
  sgtc = 10000;

 p = ((char *) psb) + sizeof(struct psb_header);

 if (numpst < 0)
  numpst = psb->numpst;
 else
  printf("Overriding number of pst :%d\n", numpst);

 for (i = 0; i < numpst; i++) {
  pst = (struct pst_header*) p;

  if (relevant != 0) {
   if (relevant!= pst->cpuid)
    goto next_one;
  }

  printf("  PST %d  cpuid %.3x fsb %hhu mfid %hhx svid %hhx numberstates %hhu\n",
    i+1,
    pst->cpuid,
    pst->fsb,
    pst->maxfid,
    pst->startvid,
    pst->numpstates);

  fsb = pst->fsb;
  decode_pst(p + sizeof(struct pst_header), pst->numpstates);

next_one:
  p += sizeof(struct pst_header) + 2*pst->numpstates;
 }

}
