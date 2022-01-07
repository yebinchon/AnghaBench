
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmsg_dump_unregister (int *) ;
 int pstore_dumper ;

__attribute__((used)) static void pstore_unregister_kmsg(void)
{
 kmsg_dump_unregister(&pstore_dumper);
}
