
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int nonce; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct ceph_messenger {TYPE_2__ inst; } ;


 int cpu_to_le32 (scalar_t__) ;
 int encode_my_addr (struct ceph_messenger*) ;
 scalar_t__ le32_to_cpu (int ) ;

void ceph_messenger_reset_nonce(struct ceph_messenger *msgr)
{
 u32 nonce = le32_to_cpu(msgr->inst.addr.nonce) + 1000000;
 msgr->inst.addr.nonce = cpu_to_le32(nonce);
 encode_my_addr(msgr);
}
