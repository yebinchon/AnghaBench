
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_dio {int error; } ;


 int cmpxchg (int *,int ,int) ;

__attribute__((used)) static inline void iomap_dio_set_error(struct iomap_dio *dio, int ret)
{
 cmpxchg(&dio->error, 0, ret);
}
