
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feat_fd {int fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ trace_report (int ,void*,int) ;

__attribute__((used)) static int process_tracing_data(struct feat_fd *ff, void *data)
{
 ssize_t ret = trace_report(ff->fd, data, 0);

 return ret < 0 ? -1 : 0;
}
