
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_object__close (int ) ;
 int close (int ) ;
 int obj ;
 int outer_map ;
 int reuseport_array ;

__attribute__((used)) static void cleanup(void)
{
 close(outer_map);
 close(reuseport_array);
 bpf_object__close(obj);
}
