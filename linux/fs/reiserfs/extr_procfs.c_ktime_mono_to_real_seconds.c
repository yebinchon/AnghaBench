
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
typedef int ktime_t ;


 int NSEC_PER_SEC ;
 int ktime_divns (int ,int) ;
 int ktime_mono_to_real (int ) ;
 int ktime_set (int ,int) ;

__attribute__((used)) static time64_t ktime_mono_to_real_seconds(time64_t mono)
{
 ktime_t kt = ktime_set(mono, NSEC_PER_SEC/2);

 return ktime_divns(ktime_mono_to_real(kt), NSEC_PER_SEC);
}
