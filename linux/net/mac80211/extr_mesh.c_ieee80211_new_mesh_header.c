
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211s_hdr {int eaddr2; int eaddr1; int flags; int seqnum; int ttl; } ;
struct TYPE_4__ {int dot11MeshTTL; } ;
struct TYPE_5__ {int mesh_seqnum; TYPE_1__ mshcfg; } ;
struct TYPE_6__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; } ;


 int ETH_ALEN ;
 int MESH_FLAGS_AE_A4 ;
 int MESH_FLAGS_AE_A5_A6 ;
 scalar_t__ WARN_ON (int ) ;
 int cpu_to_le32 (int ) ;
 int memcpy (int ,char const*,int) ;
 int memset (struct ieee80211s_hdr*,int ,int) ;
 int put_unaligned (int ,int *) ;

unsigned int ieee80211_new_mesh_header(struct ieee80211_sub_if_data *sdata,
           struct ieee80211s_hdr *meshhdr,
           const char *addr4or5, const char *addr6)
{
 if (WARN_ON(!addr4or5 && addr6))
  return 0;

 memset(meshhdr, 0, sizeof(*meshhdr));

 meshhdr->ttl = sdata->u.mesh.mshcfg.dot11MeshTTL;


 put_unaligned(cpu_to_le32(sdata->u.mesh.mesh_seqnum), &meshhdr->seqnum);
 sdata->u.mesh.mesh_seqnum++;

 if (addr4or5 && !addr6) {
  meshhdr->flags |= MESH_FLAGS_AE_A4;
  memcpy(meshhdr->eaddr1, addr4or5, ETH_ALEN);
  return 2 * ETH_ALEN;
 } else if (addr4or5 && addr6) {
  meshhdr->flags |= MESH_FLAGS_AE_A5_A6;
  memcpy(meshhdr->eaddr1, addr4or5, ETH_ALEN);
  memcpy(meshhdr->eaddr2, addr6, ETH_ALEN);
  return 3 * ETH_ALEN;
 }

 return ETH_ALEN;
}
