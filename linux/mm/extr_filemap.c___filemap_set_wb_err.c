
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int wb_err; } ;
typedef int errseq_t ;


 int errseq_set (int *,int) ;
 int trace_filemap_set_wb_err (struct address_space*,int ) ;

void __filemap_set_wb_err(struct address_space *mapping, int err)
{
 errseq_t eseq = errseq_set(&mapping->wb_err, err);

 trace_filemap_set_wb_err(mapping, eseq);
}
