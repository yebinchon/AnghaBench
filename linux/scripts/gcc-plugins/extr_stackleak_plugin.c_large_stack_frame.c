
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ get_frame_size () ;
 int maybe_ge (scalar_t__,scalar_t__) ;
 scalar_t__ track_frame_size ;

__attribute__((used)) static bool large_stack_frame(void)
{



 return (get_frame_size() >= track_frame_size);

}
