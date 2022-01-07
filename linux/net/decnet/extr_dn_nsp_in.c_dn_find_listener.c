
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {unsigned char* data; int len; } ;
struct nsp_conn_init_msg {int segsize; int info; int services; int dstaddr; int srcaddr; } ;
struct dn_skb_cb {int segsize; int info; int services; int dst_port; int src_port; } ;
struct TYPE_2__ {unsigned short reason; int text; } ;


 unsigned char DN_MENUVER_ACC ;
 unsigned char DN_MENUVER_USR ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 TYPE_1__* ci_err_table ;
 scalar_t__ dn_check_idf (unsigned char**,int*,int,int) ;
 int dn_log_martian (struct sk_buff*,int ) ;
 struct sock* dn_sklist_find_listener (struct sockaddr_dn*) ;
 int dn_username2sockaddr (unsigned char*,int,struct sockaddr_dn*,unsigned char*) ;
 int le16_to_cpu (int ) ;
 int memset (struct sockaddr_dn*,int ,int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static struct sock *dn_find_listener(struct sk_buff *skb, unsigned short *reason)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 struct nsp_conn_init_msg *msg = (struct nsp_conn_init_msg *)skb->data;
 struct sockaddr_dn dstaddr;
 struct sockaddr_dn srcaddr;
 unsigned char type = 0;
 int dstlen;
 int srclen;
 unsigned char *ptr;
 int len;
 int err = 0;
 unsigned char menuver;

 memset(&dstaddr, 0, sizeof(struct sockaddr_dn));
 memset(&srcaddr, 0, sizeof(struct sockaddr_dn));




 cb->src_port = msg->srcaddr;
 cb->dst_port = msg->dstaddr;
 cb->services = msg->services;
 cb->info = msg->info;
 cb->segsize = le16_to_cpu(msg->segsize);

 if (!pskb_may_pull(skb, sizeof(*msg)))
  goto err_out;

 skb_pull(skb, sizeof(*msg));

 len = skb->len;
 ptr = skb->data;




 dstlen = dn_username2sockaddr(ptr, len, &dstaddr, &type);
 err++;
 if (dstlen < 0)
  goto err_out;

 err++;
 if (type > 1)
  goto err_out;

 len -= dstlen;
 ptr += dstlen;




 srclen = dn_username2sockaddr(ptr, len, &srcaddr, &type);
 err++;
 if (srclen < 0)
  goto err_out;

 len -= srclen;
 ptr += srclen;
 err++;
 if (len < 1)
  goto err_out;

 menuver = *ptr;
 ptr++;
 len--;




 err++;
 if ((menuver & (DN_MENUVER_ACC | DN_MENUVER_USR)) && (len < 1))
  goto err_out;




 err++;
 if (menuver & DN_MENUVER_ACC) {
  if (dn_check_idf(&ptr, &len, 39, 1))
   goto err_out;
  if (dn_check_idf(&ptr, &len, 39, 1))
   goto err_out;
  if (dn_check_idf(&ptr, &len, 39, (menuver & DN_MENUVER_USR) ? 1 : 0))
   goto err_out;
 }




 err++;
 if (menuver & DN_MENUVER_USR) {
  if (dn_check_idf(&ptr, &len, 16, 0))
   goto err_out;
 }




 return dn_sklist_find_listener(&dstaddr);
err_out:
 dn_log_martian(skb, ci_err_table[err].text);
 *reason = ci_err_table[err].reason;
 return ((void*)0);
}
