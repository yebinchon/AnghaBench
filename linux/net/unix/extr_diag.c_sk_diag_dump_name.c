
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unix_address {TYPE_1__* name; scalar_t__ len; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int sun_path; } ;


 int UNIX_DIAG_NAME ;
 int nla_put (struct sk_buff*,int ,scalar_t__,int ) ;
 struct unix_address* smp_load_acquire (int *) ;
 TYPE_2__* unix_sk (struct sock*) ;

__attribute__((used)) static int sk_diag_dump_name(struct sock *sk, struct sk_buff *nlskb)
{

 struct unix_address *addr = smp_load_acquire(&unix_sk(sk)->addr);

 if (!addr)
  return 0;

 return nla_put(nlskb, UNIX_DIAG_NAME, addr->len - sizeof(short),
         addr->name->sun_path);
}
