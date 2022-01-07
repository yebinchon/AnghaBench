
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_ONCE (unsigned long,unsigned long) ;

__attribute__((used)) static void record_obj(unsigned long handle, unsigned long obj)
{





 WRITE_ONCE(*(unsigned long *)handle, obj);
}
