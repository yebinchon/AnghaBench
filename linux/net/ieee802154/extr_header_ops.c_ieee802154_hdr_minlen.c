
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intra_pan; int security_enabled; int source_addr_mode; int dest_addr_mode; } ;
struct ieee802154_hdr {TYPE_1__ fc; } ;


 int EINVAL ;
 int ieee802154_hdr_addr_len (int ,int) ;

__attribute__((used)) static int ieee802154_hdr_minlen(const struct ieee802154_hdr *hdr)
{
 int dlen, slen;

 dlen = ieee802154_hdr_addr_len(hdr->fc.dest_addr_mode, 0);
 slen = ieee802154_hdr_addr_len(hdr->fc.source_addr_mode,
           hdr->fc.intra_pan);

 if (slen < 0 || dlen < 0)
  return -EINVAL;

 return 3 + dlen + slen + hdr->fc.security_enabled;
}
