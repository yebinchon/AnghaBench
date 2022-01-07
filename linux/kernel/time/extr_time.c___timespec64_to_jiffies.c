
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long MAX_SEC_IN_JIFFIES ;
 unsigned long NSEC_CONVERSION ;
 unsigned long NSEC_JIFFIE_SC ;
 unsigned long SEC_CONVERSION ;
 unsigned long SEC_JIFFIE_SC ;
 long TICK_NSEC ;

__attribute__((used)) static unsigned long
__timespec64_to_jiffies(u64 sec, long nsec)
{
 nsec = nsec + TICK_NSEC - 1;

 if (sec >= MAX_SEC_IN_JIFFIES){
  sec = MAX_SEC_IN_JIFFIES;
  nsec = 0;
 }
 return ((sec * SEC_CONVERSION) +
  (((u64)nsec * NSEC_CONVERSION) >>
   (NSEC_JIFFIE_SC - SEC_JIFFIE_SC))) >> SEC_JIFFIE_SC;

}
