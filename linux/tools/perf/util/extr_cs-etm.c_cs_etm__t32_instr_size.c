
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct cs_etm_queue {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int cs_etm__mem_access (struct cs_etm_queue*,int,int ,int ,int*) ;

__attribute__((used)) static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
      u8 trace_chan_id, u64 addr)
{
 u8 instrBytes[2];

 cs_etm__mem_access(etmq, trace_chan_id, addr,
      ARRAY_SIZE(instrBytes), instrBytes);





 return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
}
