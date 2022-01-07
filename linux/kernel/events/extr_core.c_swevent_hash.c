
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int SWEVENT_HLIST_BITS ;
 int hash_64 (int,int ) ;

__attribute__((used)) static inline u64 swevent_hash(u64 type, u32 event_id)
{
 u64 val = event_id | (type << 32);

 return hash_64(val, SWEVENT_HLIST_BITS);
}
