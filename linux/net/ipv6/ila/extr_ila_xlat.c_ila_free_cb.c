
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ila_map {int dummy; } ;


 int ila_free_node (struct ila_map*) ;

__attribute__((used)) static void ila_free_cb(void *ptr, void *arg)
{
 ila_free_node((struct ila_map *)ptr);
}
