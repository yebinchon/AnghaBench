
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct echoaudio {int pipe_alloc_mask; } ;



__attribute__((used)) static inline int is_pipe_allocated(struct echoaudio *chip, u16 pipe_index)
{
 return (chip->pipe_alloc_mask & (1 << pipe_index));
}
