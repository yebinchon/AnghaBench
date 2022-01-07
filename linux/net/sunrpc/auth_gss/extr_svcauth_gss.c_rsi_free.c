
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {int data; } ;
struct rsi {TYPE_4__ out_token; TYPE_3__ out_handle; TYPE_2__ in_token; TYPE_1__ in_handle; } ;


 int kfree (int ) ;

__attribute__((used)) static void rsi_free(struct rsi *rsii)
{
 kfree(rsii->in_handle.data);
 kfree(rsii->in_token.data);
 kfree(rsii->out_handle.data);
 kfree(rsii->out_token.data);
}
