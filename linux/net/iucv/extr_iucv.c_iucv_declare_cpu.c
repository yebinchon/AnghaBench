
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipbfadr1; } ;
union iucv_param {TYPE_1__ db; } ;


 int IUCV_DECLARE_BUFFER ;
 scalar_t__ cpumask_empty (int *) ;
 int cpumask_set_cpu (int,int *) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int iucv_allow_cpu (int *) ;
 int iucv_block_cpu (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 int iucv_irq_cpumask ;
 int * iucv_irq_data ;
 scalar_t__ iucv_nonsmp_handler ;
 union iucv_param** iucv_param_irq ;
 int memset (union iucv_param*,int ,int) ;
 int pr_warn (char*,int,int,char*) ;
 int smp_processor_id () ;
 int virt_to_phys (int ) ;

__attribute__((used)) static void iucv_declare_cpu(void *data)
{
 int cpu = smp_processor_id();
 union iucv_param *parm;
 int rc;

 if (cpumask_test_cpu(cpu, &iucv_buffer_cpumask))
  return;


 parm = iucv_param_irq[cpu];
 memset(parm, 0, sizeof(union iucv_param));
 parm->db.ipbfadr1 = virt_to_phys(iucv_irq_data[cpu]);
 rc = iucv_call_b2f0(IUCV_DECLARE_BUFFER, parm);
 if (rc) {
  char *err = "Unknown";
  switch (rc) {
  case 0x03:
   err = "Directory error";
   break;
  case 0x0a:
   err = "Invalid length";
   break;
  case 0x13:
   err = "Buffer already exists";
   break;
  case 0x3e:
   err = "Buffer overlap";
   break;
  case 0x5c:
   err = "Paging or storage error";
   break;
  }
  pr_warn("Defining an interrupt buffer on CPU %i failed with 0x%02x (%s)\n",
   cpu, rc, err);
  return;
 }


 cpumask_set_cpu(cpu, &iucv_buffer_cpumask);

 if (iucv_nonsmp_handler == 0 || cpumask_empty(&iucv_irq_cpumask))

  iucv_allow_cpu(((void*)0));
 else

  iucv_block_cpu(((void*)0));
}
