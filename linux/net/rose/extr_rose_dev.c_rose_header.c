
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int addr_len; } ;


 int AX25_P_IP ;
 int ROSE_DATA ;
 int ROSE_GFI ;
 scalar_t__ ROSE_MIN_LEN ;
 int ROSE_Q_BIT ;
 int memcpy (unsigned char*,void const*,int ) ;
 unsigned char* skb_push (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int rose_header(struct sk_buff *skb, struct net_device *dev,
         unsigned short type,
         const void *daddr, const void *saddr, unsigned int len)
{
 unsigned char *buff = skb_push(skb, ROSE_MIN_LEN + 2);

 if (daddr)
  memcpy(buff + 7, daddr, dev->addr_len);

 *buff++ = ROSE_GFI | ROSE_Q_BIT;
 *buff++ = 0x00;
 *buff++ = ROSE_DATA;
 *buff++ = 0x7F;
 *buff++ = AX25_P_IP;

 if (daddr != ((void*)0))
  return 37;

 return -37;
}
