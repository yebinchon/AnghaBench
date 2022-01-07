
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_cookie {scalar_t__ data; } ;
struct nlm_block {int dummy; } ;
typedef scalar_t__ __be32 ;


 int HZ ;
 int dprintk (char*,unsigned int,scalar_t__) ;
 scalar_t__ nlm_lck_denied_grace_period ;
 struct nlm_block* nlmsvc_find_block (struct nlm_cookie*) ;
 int nlmsvc_insert_block (struct nlm_block*,int) ;
 int nlmsvc_release_block (struct nlm_block*) ;
 int nlmsvc_unlink_block (struct nlm_block*) ;

void
nlmsvc_grant_reply(struct nlm_cookie *cookie, __be32 status)
{
 struct nlm_block *block;

 dprintk("grant_reply: looking for cookie %x, s=%d \n",
  *(unsigned int *)(cookie->data), status);
 if (!(block = nlmsvc_find_block(cookie)))
  return;

 if (status == nlm_lck_denied_grace_period) {

  nlmsvc_insert_block(block, 10 * HZ);
 } else {




  nlmsvc_unlink_block(block);
 }
 nlmsvc_release_block(block);
}
