
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sigev_notify; } ;
struct aiocb {TYPE_1__ aio_sigevent; scalar_t__ aio_reqprio; scalar_t__ aio_nbytes; scalar_t__ aio_buf; scalar_t__ aio_offset; scalar_t__ aio_fildes; } ;


 scalar_t__ aio_return (struct aiocb*) ;

int main(void)
{
 struct aiocb aiocb;

 aiocb.aio_fildes = 0;
 aiocb.aio_offset = 0;
 aiocb.aio_buf = 0;
 aiocb.aio_nbytes = 0;
 aiocb.aio_reqprio = 0;
 aiocb.aio_sigevent.sigev_notify = 1 ;

 return (int)aio_return(&aiocb);
}
