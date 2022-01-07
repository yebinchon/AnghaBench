
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int UINT48_MAX ;

__attribute__((used)) static inline void dccp_set_seqno(u64 *seqno, u64 value)
{
 *seqno = value & UINT48_MAX;
}
