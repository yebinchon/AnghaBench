
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_PRIVATE ;
 int MS_REC ;
 int MS_SHARED ;
 int MS_SILENT ;
 int MS_SLAVE ;
 int MS_UNBINDABLE ;
 int is_power_of_2 (int) ;

__attribute__((used)) static int flags_to_propagation_type(int ms_flags)
{
 int type = ms_flags & ~(MS_REC | MS_SILENT);


 if (type & ~(MS_SHARED | MS_PRIVATE | MS_SLAVE | MS_UNBINDABLE))
  return 0;

 if (!is_power_of_2(type))
  return 0;
 return type;
}
