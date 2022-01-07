
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct smp_cmd_pairing {scalar_t__ io_capability; scalar_t__ auth_req; } ;
struct smp_chan {int flags; int * preq; int * prsp; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_conn {scalar_t__ out; } ;


 scalar_t__ JUST_CFM ;
 scalar_t__ JUST_WORKS ;
 scalar_t__ REQ_OOB ;
 scalar_t__ SMP_AUTH_MITM ;
 int SMP_FLAG_INITIATOR ;
 int SMP_FLAG_LOCAL_OOB ;
 int SMP_FLAG_REMOTE_OOB ;
 scalar_t__ get_auth_method (struct smp_chan*,scalar_t__,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u8 sc_select_method(struct smp_chan *smp)
{
 struct l2cap_conn *conn = smp->conn;
 struct hci_conn *hcon = conn->hcon;
 struct smp_cmd_pairing *local, *remote;
 u8 local_mitm, remote_mitm, local_io, remote_io, method;

 if (test_bit(SMP_FLAG_REMOTE_OOB, &smp->flags) ||
     test_bit(SMP_FLAG_LOCAL_OOB, &smp->flags))
  return REQ_OOB;






 if (hcon->out) {
  local = (void *) &smp->preq[1];
  remote = (void *) &smp->prsp[1];
 } else {
  local = (void *) &smp->prsp[1];
  remote = (void *) &smp->preq[1];
 }

 local_io = local->io_capability;
 remote_io = remote->io_capability;

 local_mitm = (local->auth_req & SMP_AUTH_MITM);
 remote_mitm = (remote->auth_req & SMP_AUTH_MITM);




 if (local_mitm || remote_mitm)
  method = get_auth_method(smp, local_io, remote_io);
 else
  method = JUST_WORKS;


 if (method == JUST_CFM && test_bit(SMP_FLAG_INITIATOR, &smp->flags))
  method = JUST_WORKS;

 return method;
}
