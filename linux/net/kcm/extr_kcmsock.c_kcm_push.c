
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_sock {scalar_t__ tx_wait_more; } ;


 int kcm_write_msgs (struct kcm_sock*) ;

__attribute__((used)) static void kcm_push(struct kcm_sock *kcm)
{
 if (kcm->tx_wait_more)
  kcm_write_msgs(kcm);
}
