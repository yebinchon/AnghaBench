
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int trace_len; int trace; int checksum; int flags; int count; int min_count; int jiffies; int pid; int comm; int size; int pointer; } ;


 int pr_notice (char*,...) ;
 int stack_trace_print (int ,int ,int) ;

__attribute__((used)) static void dump_object_info(struct kmemleak_object *object)
{
 pr_notice("Object 0x%08lx (size %zu):\n",
    object->pointer, object->size);
 pr_notice("  comm \"%s\", pid %d, jiffies %lu\n",
    object->comm, object->pid, object->jiffies);
 pr_notice("  min_count = %d\n", object->min_count);
 pr_notice("  count = %d\n", object->count);
 pr_notice("  flags = 0x%x\n", object->flags);
 pr_notice("  checksum = %u\n", object->checksum);
 pr_notice("  backtrace:\n");
 stack_trace_print(object->trace, object->trace_len, 4);
}
