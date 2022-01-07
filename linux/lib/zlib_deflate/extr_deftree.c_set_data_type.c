
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data_type; TYPE_1__* dyn_ltree; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_4__ {scalar_t__ Freq; } ;
typedef scalar_t__ Byte ;


 int LITERALS ;
 scalar_t__ Z_ASCII ;
 scalar_t__ Z_BINARY ;

__attribute__((used)) static void set_data_type(
 deflate_state *s
)
{
    int n = 0;
    unsigned ascii_freq = 0;
    unsigned bin_freq = 0;
    while (n < 7) bin_freq += s->dyn_ltree[n++].Freq;
    while (n < 128) ascii_freq += s->dyn_ltree[n++].Freq;
    while (n < LITERALS) bin_freq += s->dyn_ltree[n++].Freq;
    s->data_type = (Byte)(bin_freq > (ascii_freq >> 2) ? Z_BINARY : Z_ASCII);
}
