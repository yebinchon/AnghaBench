
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {scalar_t__ model; } ;
struct capabilities {int digit_io_switch; scalar_t__ mic_source_switch; scalar_t__ output_switch; scalar_t__ dedicated_mic; } ;


 scalar_t__ CTSB073X ;
 scalar_t__ CTUAA ;

__attribute__((used)) static struct capabilities hw_capabilities(struct hw *hw)
{
 struct capabilities cap;


 cap.digit_io_switch = !(hw->model == CTSB073X || hw->model == CTUAA);
 cap.dedicated_mic = 0;
 cap.output_switch = 0;
 cap.mic_source_switch = 0;

 return cap;
}
