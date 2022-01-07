
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sk_socket; } ;
struct smc_sock {int use_fallback; TYPE_4__* clcsock; TYPE_3__ sk; } ;
struct TYPE_8__ {TYPE_1__* file; } ;
struct TYPE_6__ {TYPE_1__* file; } ;
struct TYPE_5__ {TYPE_4__* private_data; } ;



__attribute__((used)) static void smc_switch_to_fallback(struct smc_sock *smc)
{
 smc->use_fallback = 1;
 if (smc->sk.sk_socket && smc->sk.sk_socket->file) {
  smc->clcsock->file = smc->sk.sk_socket->file;
  smc->clcsock->file->private_data = smc->clcsock;
 }
}
