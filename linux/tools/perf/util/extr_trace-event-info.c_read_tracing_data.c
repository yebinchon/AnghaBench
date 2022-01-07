
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_data {int dummy; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 struct tracing_data* tracing_data_get (struct list_head*,int,int) ;
 int tracing_data_put (struct tracing_data*) ;

int read_tracing_data(int fd, struct list_head *pattrs)
{
 int err;
 struct tracing_data *tdata;





 tdata = tracing_data_get(pattrs, fd, 0);
 if (!tdata)
  return -ENOMEM;

 err = tracing_data_put(tdata);
 return err;
}
