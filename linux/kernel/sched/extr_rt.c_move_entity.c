
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DEQUEUE_MOVE ;
 unsigned int DEQUEUE_SAVE ;

__attribute__((used)) static inline bool move_entity(unsigned int flags)
{
 if ((flags & (DEQUEUE_SAVE | DEQUEUE_MOVE)) == DEQUEUE_SAVE)
  return 0;

 return 1;
}
