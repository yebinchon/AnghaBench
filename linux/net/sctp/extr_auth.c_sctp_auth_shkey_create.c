
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_shared_key {int key_id; int refcnt; int key_list; } ;
typedef int gfp_t ;
typedef int __u16 ;


 int INIT_LIST_HEAD (int *) ;
 struct sctp_shared_key* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;

struct sctp_shared_key *sctp_auth_shkey_create(__u16 key_id, gfp_t gfp)
{
 struct sctp_shared_key *new;


 new = kzalloc(sizeof(struct sctp_shared_key), gfp);
 if (!new)
  return ((void*)0);

 INIT_LIST_HEAD(&new->key_list);
 refcount_set(&new->refcnt, 1);
 new->key_id = key_id;

 return new;
}
