
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_3__ {int vci; int vpi; int itf; } ;
struct sockaddr_atmpvc {TYPE_1__ sap_addr; int sap_family; } ;
struct sockaddr {int dummy; } ;
struct atm_vcc {int vci; int vpi; TYPE_2__* dev; int flags; } ;
struct TYPE_4__ {int number; } ;


 int AF_ATMPVC ;
 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_ADDR ;
 int ENOTCONN ;
 int memset (struct sockaddr_atmpvc*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int pvc_getname(struct socket *sock, struct sockaddr *sockaddr,
         int peer)
{
 struct sockaddr_atmpvc *addr;
 struct atm_vcc *vcc = ATM_SD(sock);

 if (!vcc->dev || !test_bit(ATM_VF_ADDR, &vcc->flags))
  return -ENOTCONN;
 addr = (struct sockaddr_atmpvc *)sockaddr;
 memset(addr, 0, sizeof(*addr));
 addr->sap_family = AF_ATMPVC;
 addr->sap_addr.itf = vcc->dev->number;
 addr->sap_addr.vpi = vcc->vpi;
 addr->sap_addr.vci = vcc->vci;
 return sizeof(struct sockaddr_atmpvc);
}
