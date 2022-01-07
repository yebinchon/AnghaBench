
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sock {int (* sk_state_change ) (struct sock*) ;int sk_err_soft; int sk_receive_queue; int sk_ack_backlog; int sk_err; int sk_wmem_alloc; } ;
struct sk_buff {int truesize; scalar_t__ data; } ;
struct TYPE_11__ {int vci; int vpi; int itf; } ;
struct TYPE_12__ {TYPE_5__ sap_addr; } ;
struct TYPE_9__ {int pub; int prv; } ;
struct TYPE_10__ {TYPE_3__ sas_addr; } ;
struct atmsvc_msg {int type; int reply; int listen_vcc; int qos; TYPE_6__ pvc; TYPE_4__ local; int vcc; } ;
struct TYPE_7__ {int * pub; int * prv; } ;
struct TYPE_8__ {TYPE_1__ sas_addr; int sas_family; } ;
struct atm_vcc {int flags; int qos; int vci; int vpi; int itf; struct atm_vcc* session; TYPE_2__ local; } ;


 int AF_ATMSVC ;
 int ATM_E164_LEN ;
 int ATM_ESA_LEN ;
 int ATM_VF_READY ;
 int ATM_VF_REGIS ;
 int ATM_VF_RELEASED ;
 int ATM_VF_WAITING ;
 int EINVAL ;
 int WARN_ON (int ) ;







 int as_reject ;
 int clear_bit (int ,int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,int ,int ) ;
 int modify_qos (struct atm_vcc*,struct atmsvc_msg*) ;
 int pr_alert (char*,int) ;
 int pr_debug (char*,...) ;
 int refcount_sub_and_test (int ,int *) ;
 int release_sock (struct sock*) ;
 int set_bit (int ,int *) ;
 int sigd_enq (int *,int ,struct atm_vcc*,int *,int *) ;
 int sk_acceptq_is_full (struct sock*) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 int sk_sleep (struct sock*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int vcc_release_async (struct atm_vcc*,int ) ;

__attribute__((used)) static int sigd_send(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct atmsvc_msg *msg;
 struct atm_vcc *session_vcc;
 struct sock *sk;

 msg = (struct atmsvc_msg *) skb->data;
 WARN_ON(refcount_sub_and_test(skb->truesize, &sk_atm(vcc)->sk_wmem_alloc));
 vcc = *(struct atm_vcc **) &msg->vcc;
 pr_debug("%d (0x%lx)\n", (int)msg->type, (unsigned long)vcc);
 sk = sk_atm(vcc);

 switch (msg->type) {
 case 128:
  sk->sk_err = -msg->reply;
  clear_bit(ATM_VF_WAITING, &vcc->flags);
  if (!*vcc->local.sas_addr.prv && !*vcc->local.sas_addr.pub) {
   vcc->local.sas_family = AF_ATMSVC;
   memcpy(vcc->local.sas_addr.prv,
          msg->local.sas_addr.prv, ATM_ESA_LEN);
   memcpy(vcc->local.sas_addr.pub,
          msg->local.sas_addr.pub, ATM_E164_LEN + 1);
  }
  session_vcc = vcc->session ? vcc->session : vcc;
  if (session_vcc->vpi || session_vcc->vci)
   break;
  session_vcc->itf = msg->pvc.sap_addr.itf;
  session_vcc->vpi = msg->pvc.sap_addr.vpi;
  session_vcc->vci = msg->pvc.sap_addr.vci;
  if (session_vcc->vpi || session_vcc->vci)
   session_vcc->qos = msg->qos;
  break;
 case 131:
  clear_bit(ATM_VF_REGIS, &vcc->flags);
  clear_bit(ATM_VF_READY, &vcc->flags);
  sk->sk_err = -msg->reply;
  clear_bit(ATM_VF_WAITING, &vcc->flags);
  break;
 case 130:
  vcc = *(struct atm_vcc **)&msg->listen_vcc;
  sk = sk_atm(vcc);
  pr_debug("as_indicate!!!\n");
  lock_sock(sk);
  if (sk_acceptq_is_full(sk)) {
   sigd_enq(((void*)0), as_reject, vcc, ((void*)0), ((void*)0));
   dev_kfree_skb(skb);
   goto as_indicate_complete;
  }
  sk->sk_ack_backlog++;
  skb_queue_tail(&sk->sk_receive_queue, skb);
  pr_debug("waking sk_sleep(sk) 0x%p\n", sk_sleep(sk));
  sk->sk_state_change(sk);
as_indicate_complete:
  release_sock(sk);
  return 0;
 case 133:
  set_bit(ATM_VF_RELEASED, &vcc->flags);
  vcc_release_async(vcc, msg->reply);
  goto out;
 case 129:
  modify_qos(vcc, msg);
  break;
 case 134:
 case 132:
  sk->sk_err_soft = -msg->reply;

  clear_bit(ATM_VF_WAITING, &vcc->flags);
  break;
 default:
  pr_alert("bad message type %d\n", (int)msg->type);
  return -EINVAL;
 }
 sk->sk_state_change(sk);
out:
 dev_kfree_skb(skb);
 return 0;
}
