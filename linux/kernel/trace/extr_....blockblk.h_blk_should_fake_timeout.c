
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;



__attribute__((used)) static inline int blk_should_fake_timeout(struct request_queue *q)
{
 return 0;
}
