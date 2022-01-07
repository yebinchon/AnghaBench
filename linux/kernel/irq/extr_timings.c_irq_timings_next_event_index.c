
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREDICTION_PERIOD_MIN ;
 int memcmp (int*,int*,size_t) ;

__attribute__((used)) static int irq_timings_next_event_index(int *buffer, size_t len, int period_max)
{
 int period;





 buffer = &buffer[len - (period_max * 3)];


 len = period_max * 3;
 for (period = period_max; period >= PREDICTION_PERIOD_MIN; period--) {







  int idx = period;
  size_t size = period;







  while (!memcmp(buffer, &buffer[idx], size * sizeof(int))) {




   idx += size;






   if (idx == len)
    return buffer[len % period];






   if (len - idx < period)
    size = len - idx;
  }
 }

 return -1;
}
