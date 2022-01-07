; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_tx_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_tx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_audio_codec = type { i32 }

@AUDIO_PORT_IC_TXFIFO_OP = common dso_local global i32 0, align 4
@AUDIO_PORT_IC_CODEC_TX_CTRL = common dso_local global i32 0, align 4
@IC_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirf_audio_codec*)* @sirf_audio_codec_tx_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_audio_codec_tx_disable(%struct.sirf_audio_codec* %0) #0 {
  %2 = alloca %struct.sirf_audio_codec*, align 8
  store %struct.sirf_audio_codec* %0, %struct.sirf_audio_codec** %2, align 8
  %3 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %4 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AUDIO_PORT_IC_TXFIFO_OP, align 4
  %7 = call i32 @regmap_write(i32 %5, i32 %6, i32 0)
  %8 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %9 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AUDIO_PORT_IC_CODEC_TX_CTRL, align 4
  %12 = load i32, i32* @IC_TX_ENABLE, align 4
  %13 = load i32, i32* @IC_TX_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 %14)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
