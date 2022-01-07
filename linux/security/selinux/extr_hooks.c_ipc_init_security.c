
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipc_security_struct {int sid; int sclass; } ;


 int current_sid () ;

__attribute__((used)) static void ipc_init_security(struct ipc_security_struct *isec, u16 sclass)
{
 isec->sclass = sclass;
 isec->sid = current_sid();
}
