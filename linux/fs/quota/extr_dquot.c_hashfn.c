
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct kqid {int type; } ;


 unsigned long L1_CACHE_SHIFT ;
 int MAXQUOTAS ;
 unsigned long dq_hash_bits ;
 unsigned long dq_hash_mask ;
 unsigned int from_kqid (int *,struct kqid) ;
 int init_user_ns ;

__attribute__((used)) static inline unsigned int
hashfn(const struct super_block *sb, struct kqid qid)
{
 unsigned int id = from_kqid(&init_user_ns, qid);
 int type = qid.type;
 unsigned long tmp;

 tmp = (((unsigned long)sb>>L1_CACHE_SHIFT) ^ id) * (MAXQUOTAS - type);
 return (tmp + (tmp >> dq_hash_bits)) & dq_hash_mask;
}
