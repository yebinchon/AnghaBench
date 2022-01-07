
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct ceph_messenger {int my_enc_addr; TYPE_1__ inst; } ;


 int ceph_encode_banner_addr (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void encode_my_addr(struct ceph_messenger *msgr)
{
 memcpy(&msgr->my_enc_addr, &msgr->inst.addr, sizeof(msgr->my_enc_addr));
 ceph_encode_banner_addr(&msgr->my_enc_addr);
}
