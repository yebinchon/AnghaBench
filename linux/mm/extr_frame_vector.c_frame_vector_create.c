
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_vector {unsigned int nr_allocated; scalar_t__ nr_frames; } ;


 int GFP_KERNEL ;
 int INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct frame_vector* kvmalloc (int,int ) ;

struct frame_vector *frame_vector_create(unsigned int nr_frames)
{
 struct frame_vector *vec;
 int size = sizeof(struct frame_vector) + sizeof(void *) * nr_frames;

 if (WARN_ON_ONCE(nr_frames == 0))
  return ((void*)0);




 if (WARN_ON_ONCE(nr_frames > INT_MAX / sizeof(void *) / 2))
  return ((void*)0);




 vec = kvmalloc(size, GFP_KERNEL);
 if (!vec)
  return ((void*)0);
 vec->nr_allocated = nr_frames;
 vec->nr_frames = 0;
 return vec;
}
