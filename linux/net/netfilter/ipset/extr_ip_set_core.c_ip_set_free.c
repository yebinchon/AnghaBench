
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_vmalloc_addr (void*) ;
 int kvfree (void*) ;
 int pr_debug (char*,void*,char*) ;

void
ip_set_free(void *members)
{
 pr_debug("%p: free with %s\n", members,
   is_vmalloc_addr(members) ? "vfree" : "kfree");
 kvfree(members);
}
