
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mixart_mgr {int dummy; } ;


 int EBUSY ;
 unsigned long HZ ;
 int MIXART_MEM (struct mixart_mgr*,scalar_t__) ;
 int cond_resched () ;
 unsigned long jiffies ;
 scalar_t__ readl_be (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int mixart_wait_nice_for_register_value(struct mixart_mgr *mgr,
            u32 offset, int is_egal,
            u32 value, unsigned long timeout)
{
 unsigned long end_time = jiffies + (timeout * HZ / 100);
 u32 read;

 do {


  cond_resched();

  read = readl_be( MIXART_MEM( mgr, offset ));
  if(is_egal) {
   if(read == value) return 0;
  }
  else {
   if(read != value) return 0;
  }
 } while ( time_after_eq(end_time, jiffies) );

 return -EBUSY;
}
