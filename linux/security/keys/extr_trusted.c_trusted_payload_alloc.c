
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trusted_key_payload {int migratable; } ;
struct key {int dummy; } ;


 int GFP_KERNEL ;
 int key_payload_reserve (struct key*,int) ;
 struct trusted_key_payload* kzalloc (int,int ) ;

__attribute__((used)) static struct trusted_key_payload *trusted_payload_alloc(struct key *key)
{
 struct trusted_key_payload *p = ((void*)0);
 int ret;

 ret = key_payload_reserve(key, sizeof *p);
 if (ret < 0)
  return p;
 p = kzalloc(sizeof *p, GFP_KERNEL);
 if (p)
  p->migratable = 1;
 return p;
}
