
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_esp {int invflags; int * spis; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int thoff; struct xt_esp* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int spi; } ;
typedef int _esp ;


 int XT_ESP_INV_SPI ;
 int ntohl (int ) ;
 int pr_debug (char*) ;
 struct ip_esp_hdr* skb_header_pointer (struct sk_buff const*,int ,int,struct ip_esp_hdr*) ;
 int spi_match (int ,int ,int ,int) ;

__attribute__((used)) static bool esp_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct ip_esp_hdr *eh;
 struct ip_esp_hdr _esp;
 const struct xt_esp *espinfo = par->matchinfo;


 if (par->fragoff != 0)
  return 0;

 eh = skb_header_pointer(skb, par->thoff, sizeof(_esp), &_esp);
 if (eh == ((void*)0)) {



  pr_debug("Dropping evil ESP tinygram.\n");
  par->hotdrop = 1;
  return 0;
 }

 return spi_match(espinfo->spis[0], espinfo->spis[1], ntohl(eh->spi),
    !!(espinfo->invflags & XT_ESP_INV_SPI));
}
