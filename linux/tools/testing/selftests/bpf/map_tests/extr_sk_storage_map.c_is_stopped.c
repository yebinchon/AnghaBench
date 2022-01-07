
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (int ) ;
 int stop ;

__attribute__((used)) static bool is_stopped(void)
{
 return READ_ONCE(stop);
}
