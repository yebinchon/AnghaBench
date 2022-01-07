
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int new_data; } ;
struct s390_cpumsf {TYPE_1__ queues; } ;


 int s390_cpumsf_setup_queues (struct s390_cpumsf*,int ) ;

__attribute__((used)) static int s390_cpumsf_update_queues(struct s390_cpumsf *sf, u64 ts)
{
 if (!sf->queues.new_data)
  return 0;

 sf->queues.new_data = 0;
 return s390_cpumsf_setup_queues(sf, ts);
}
