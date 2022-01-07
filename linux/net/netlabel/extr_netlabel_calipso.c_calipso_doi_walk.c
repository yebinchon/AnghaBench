
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_calipso_ops {int (* doi_walk ) (int *,int (*) (struct calipso_doi*,void*),void*) ;} ;


 int ENOMSG ;
 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (int *,int (*) (struct calipso_doi*,void*),void*) ;

int calipso_doi_walk(u32 *skip_cnt,
       int (*callback)(struct calipso_doi *doi_def, void *arg),
       void *cb_arg)
{
 int ret_val = -ENOMSG;
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->doi_walk(skip_cnt, callback, cb_arg);
 return ret_val;
}
