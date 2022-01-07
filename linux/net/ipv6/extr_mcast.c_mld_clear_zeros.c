
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {scalar_t__ sf_crcount; struct ip6_sf_list* sf_next; } ;


 int kfree (struct ip6_sf_list*) ;

__attribute__((used)) static void mld_clear_zeros(struct ip6_sf_list **ppsf)
{
 struct ip6_sf_list *psf_prev, *psf_next, *psf;

 psf_prev = ((void*)0);
 for (psf = *ppsf; psf; psf = psf_next) {
  psf_next = psf->sf_next;
  if (psf->sf_crcount == 0) {
   if (psf_prev)
    psf_prev->sf_next = psf->sf_next;
   else
    *ppsf = psf->sf_next;
   kfree(psf);
  } else
   psf_prev = psf;
 }
}
