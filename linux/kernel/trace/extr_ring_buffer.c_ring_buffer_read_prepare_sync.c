
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int synchronize_rcu () ;

void
ring_buffer_read_prepare_sync(void)
{
 synchronize_rcu();
}
