
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw20k2 {int mic_source; } ;
struct hw {int dummy; } ;



__attribute__((used)) static int hw_mic_source_switch_get(struct hw *hw)
{
 struct hw20k2 *hw20k2 = (struct hw20k2 *)hw;

 return hw20k2->mic_source;
}
