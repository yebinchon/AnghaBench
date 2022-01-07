
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int pan_id; } ;
struct TYPE_3__ {int intra_pan; int source_addr_mode; int dest_addr_mode; } ;
struct ieee802154_hdr {TYPE_2__ dest; TYPE_2__ source; TYPE_1__ fc; } ;


 scalar_t__ ieee802154_hdr_get_addr (int const*,int ,int,TYPE_2__*) ;

__attribute__((used)) static int
ieee802154_hdr_get_addrs(const u8 *buf, struct ieee802154_hdr *hdr)
{
 int pos = 0;

 pos += ieee802154_hdr_get_addr(buf + pos, hdr->fc.dest_addr_mode,
           0, &hdr->dest);
 pos += ieee802154_hdr_get_addr(buf + pos, hdr->fc.source_addr_mode,
           hdr->fc.intra_pan, &hdr->source);

 if (hdr->fc.intra_pan)
  hdr->source.pan_id = hdr->dest.pan_id;

 return pos;
}
