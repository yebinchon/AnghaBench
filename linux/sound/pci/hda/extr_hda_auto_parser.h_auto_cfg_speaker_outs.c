
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_pin_cfg {scalar_t__ line_out_type; int line_outs; int speaker_outs; } ;


 scalar_t__ AUTO_PIN_SPEAKER_OUT ;

__attribute__((used)) static inline int auto_cfg_speaker_outs(const struct auto_pin_cfg *cfg)
{
 return (cfg->line_out_type == AUTO_PIN_SPEAKER_OUT) ?
        cfg->line_outs : cfg->speaker_outs;
}
