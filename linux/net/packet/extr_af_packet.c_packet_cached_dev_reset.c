
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_sock {int cached_dev; } ;


 int RCU_INIT_POINTER (int ,int *) ;

__attribute__((used)) static void packet_cached_dev_reset(struct packet_sock *po)
{
 RCU_INIT_POINTER(po->cached_dev, ((void*)0));
}
