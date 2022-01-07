
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lx_stream {int status; } ;
struct lx6464es {int dummy; } ;




 int lx_trigger_start (struct lx6464es*,struct lx_stream*) ;
 int lx_trigger_stop (struct lx6464es*,struct lx_stream*) ;

__attribute__((used)) static void lx_trigger_dispatch_stream(struct lx6464es *chip,
           struct lx_stream *lx_stream)
{
 switch (lx_stream->status) {
 case 129:
  lx_trigger_start(chip, lx_stream);
  break;

 case 128:
  lx_trigger_stop(chip, lx_stream);
  break;

 default:
  break;
 }
}
