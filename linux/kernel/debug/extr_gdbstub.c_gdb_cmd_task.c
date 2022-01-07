
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kgdb_state {int threadid; int linux_regs; int kgdb_usethreadid; } ;


 int EINVAL ;
 int error_packet (int ,int ) ;
 struct task_struct* getthread (int ,int ) ;
 struct task_struct* kgdb_contthread ;
 int kgdb_hex2long (char**,int *) ;
 struct task_struct* kgdb_usethread ;
 int* remcom_in_buffer ;
 int remcom_out_buffer ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void gdb_cmd_task(struct kgdb_state *ks)
{
 struct task_struct *thread;
 char *ptr;

 switch (remcom_in_buffer[1]) {
 case 'g':
  ptr = &remcom_in_buffer[2];
  kgdb_hex2long(&ptr, &ks->threadid);
  thread = getthread(ks->linux_regs, ks->threadid);
  if (!thread && ks->threadid > 0) {
   error_packet(remcom_out_buffer, -EINVAL);
   break;
  }
  kgdb_usethread = thread;
  ks->kgdb_usethreadid = ks->threadid;
  strcpy(remcom_out_buffer, "OK");
  break;
 case 'c':
  ptr = &remcom_in_buffer[2];
  kgdb_hex2long(&ptr, &ks->threadid);
  if (!ks->threadid) {
   kgdb_contthread = ((void*)0);
  } else {
   thread = getthread(ks->linux_regs, ks->threadid);
   if (!thread && ks->threadid > 0) {
    error_packet(remcom_out_buffer, -EINVAL);
    break;
   }
   kgdb_contthread = thread;
  }
  strcpy(remcom_out_buffer, "OK");
  break;
 }
}
