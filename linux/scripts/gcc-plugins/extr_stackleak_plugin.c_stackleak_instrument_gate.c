
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stackleak_gate () ;

__attribute__((used)) static bool stackleak_instrument_gate(void)
{
 return stackleak_gate();
}
