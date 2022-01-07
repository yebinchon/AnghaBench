
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_cpu () ;
 int lru_add_drain_cpu (int ) ;
 int put_cpu () ;

void lru_add_drain(void)
{
 lru_add_drain_cpu(get_cpu());
 put_cpu();
}
