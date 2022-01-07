
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_result {int nhc; struct fib_info* fi; } ;
struct fib_info {int dummy; } ;


 int fib_info_nhc (struct fib_info*,int ) ;

__attribute__((used)) static inline void fib_result_assign(struct fib_result *res,
         struct fib_info *fi)
{

 res->fi = fi;
 res->nhc = fib_info_nhc(fi, 0);
}
