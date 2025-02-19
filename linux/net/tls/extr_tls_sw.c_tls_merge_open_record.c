
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ copybreak; void* curr; void* end; void* start; } ;
struct sk_msg {TYPE_1__ sg; scalar_t__ apply_bytes; } ;
struct tls_rec {int msg_encrypted; struct sk_msg msg_plaintext; } ;
struct sock {int dummy; } ;
struct scatterlist {scalar_t__ offset; scalar_t__ length; } ;


 int kfree (struct tls_rec*) ;
 int put_page (scalar_t__) ;
 scalar_t__ sg_page (struct scatterlist*) ;
 struct scatterlist* sk_msg_elem (struct sk_msg*,void*) ;
 int sk_msg_free (struct sock*,int *) ;
 int sk_msg_iter_var_prev (void*) ;
 int sk_msg_xfer_full (int *,int *) ;

__attribute__((used)) static void tls_merge_open_record(struct sock *sk, struct tls_rec *to,
      struct tls_rec *from, u32 orig_end)
{
 struct sk_msg *msg_npl = &from->msg_plaintext;
 struct sk_msg *msg_opl = &to->msg_plaintext;
 struct scatterlist *osge, *nsge;
 u32 i, j;

 i = msg_opl->sg.end;
 sk_msg_iter_var_prev(i);
 j = msg_npl->sg.start;

 osge = sk_msg_elem(msg_opl, i);
 nsge = sk_msg_elem(msg_npl, j);

 if (sg_page(osge) == sg_page(nsge) &&
     osge->offset + osge->length == nsge->offset) {
  osge->length += nsge->length;
  put_page(sg_page(nsge));
 }

 msg_opl->sg.end = orig_end;
 msg_opl->sg.curr = orig_end;
 msg_opl->sg.copybreak = 0;
 msg_opl->apply_bytes = msg_opl->sg.size + msg_npl->sg.size;
 msg_opl->sg.size += msg_npl->sg.size;

 sk_msg_free(sk, &to->msg_encrypted);
 sk_msg_xfer_full(&to->msg_encrypted, &from->msg_encrypted);

 kfree(from);
}
