
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ring_buffer {int (* clock ) () ;} ;


 int DEBUG_SHIFT ;
 int stub1 () ;

__attribute__((used)) static inline u64 rb_time_stamp(struct ring_buffer *buffer)
{

 return buffer->clock() << DEBUG_SHIFT;
}
