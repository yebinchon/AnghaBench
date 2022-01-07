
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_PROBE (int ,int ) ;
 int name ;
 int provider ;

int main(void)
{
 DTRACE_PROBE(provider, name);
 return 0;
}
