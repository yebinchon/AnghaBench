
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_master {int dummy; } ;


 int fsi_core_read (struct fsi_master*,int ) ;
 int int_st ;

__attribute__((used)) static u32 fsi_irq_get_status(struct fsi_master *master)
{
 return fsi_core_read(master, int_st);
}
