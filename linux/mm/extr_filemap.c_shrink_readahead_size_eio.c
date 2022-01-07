
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {int ra_pages; } ;
struct file {int dummy; } ;



__attribute__((used)) static void shrink_readahead_size_eio(struct file *filp,
     struct file_ra_state *ra)
{
 ra->ra_pages /= 4;
}
