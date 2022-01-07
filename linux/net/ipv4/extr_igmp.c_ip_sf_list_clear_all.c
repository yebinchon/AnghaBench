
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_sf_list {struct ip_sf_list* sf_next; } ;


 int kfree (struct ip_sf_list*) ;

__attribute__((used)) static void ip_sf_list_clear_all(struct ip_sf_list *psf)
{
 struct ip_sf_list *next;

 while (psf) {
  next = psf->sf_next;
  kfree(psf);
  psf = next;
 }
}
