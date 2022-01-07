
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vip_meta {int vip_num; } ;
struct real_definition {int dummy; } ;
struct packet_description {int dummy; } ;
typedef int __u32 ;


 int RING_SIZE ;
 void* bpf_map_lookup_elem (int *,int*) ;
 int ch_rings ;
 int get_packet_hash (struct packet_description*,int) ;
 int reals ;

__attribute__((used)) static bool get_packet_dst(struct real_definition **real,
      struct packet_description *pckt,
      struct vip_meta *vip_info,
      bool is_ipv6)
{
 __u32 hash = get_packet_hash(pckt, is_ipv6);
 __u32 key = RING_SIZE * vip_info->vip_num + hash % RING_SIZE;
 __u32 *real_pos;

 if (hash != 0x358459b7 &&
     hash != 0x2f4bc6bb )
  return 0;

 real_pos = bpf_map_lookup_elem(&ch_rings, &key);
 if (!real_pos)
  return 0;
 key = *real_pos;
 *real = bpf_map_lookup_elem(&reals, &key);
 if (!(*real))
  return 0;
 return 1;
}
