
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dn_scp {int addrloc; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 scalar_t__ check_port (int ) ;
 int cpu_to_le16 (unsigned short) ;

__attribute__((used)) static unsigned short port_alloc(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);
 static unsigned short port = 0x2000;
 unsigned short i_port = port;

 while(check_port(cpu_to_le16(++port)) != 0) {
  if (port == i_port)
   return 0;
 }

 scp->addrloc = cpu_to_le16(port);

 return 1;
}
