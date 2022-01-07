
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int signal_pending (int ) ;

__attribute__((used)) static bool dump_interrupted(void)
{






 return signal_pending(current);
}
