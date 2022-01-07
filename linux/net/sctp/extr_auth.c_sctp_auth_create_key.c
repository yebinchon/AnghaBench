
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_auth_bytes {int len; int refcnt; } ;
typedef int gfp_t ;
typedef int __u32 ;


 int INT_MAX ;
 int SCTP_DBG_OBJCNT_INC (int ) ;
 int keys ;
 struct sctp_auth_bytes* kmalloc (int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct sctp_auth_bytes *sctp_auth_create_key(__u32 key_len, gfp_t gfp)
{
 struct sctp_auth_bytes *key;


 if (key_len > (INT_MAX - sizeof(struct sctp_auth_bytes)))
  return ((void*)0);


 key = kmalloc(sizeof(struct sctp_auth_bytes) + key_len, gfp);
 if (!key)
  return ((void*)0);

 key->len = key_len;
 refcount_set(&key->refcnt, 1);
 SCTP_DBG_OBJCNT_INC(keys);

 return key;
}
