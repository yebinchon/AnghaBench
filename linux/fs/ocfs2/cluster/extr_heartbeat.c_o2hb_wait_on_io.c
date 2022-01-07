
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_bio_wait_ctxt {int wc_io_complete; } ;


 int o2hb_bio_wait_dec (struct o2hb_bio_wait_ctxt*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void o2hb_wait_on_io(struct o2hb_bio_wait_ctxt *wc)
{
 o2hb_bio_wait_dec(wc, 1);
 wait_for_completion(&wc->wc_io_complete);
}
