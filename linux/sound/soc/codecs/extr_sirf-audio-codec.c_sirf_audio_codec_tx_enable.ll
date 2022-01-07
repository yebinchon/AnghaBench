; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_audio_codec = type { i32 }

@AUDIO_PORT_IC_TXFIFO_OP = common dso_local global i32 0, align 4
@AUDIO_FIFO_RESET = common dso_local global i32 0, align 4
@AUDIO_PORT_IC_TXFIFO_INT_MSK = common dso_local global i32 0, align 4
@AUDIO_FIFO_START = common dso_local global i32 0, align 4
@AUDIO_PORT_IC_CODEC_TX_CTRL = common dso_local global i32 0, align 4
@IC_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirf_audio_codec*)* @sirf_audio_codec_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_audio_codec_tx_enable(%struct.sirf_audio_codec* %0) #0 {
  %2 = alloca %struct.sirf_audio_codec*, align 8
  store %struct.sirf_audio_codec* %0, %struct.sirf_audio_codec** %2, align 8
  %3 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %4 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AUDIO_PORT_IC_TXFIFO_OP, align 4
  %7 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %8 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %11 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AUDIO_PORT_IC_TXFIFO_OP, align 4
  %14 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %15 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %16 = xor i32 %15, -1
  %17 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %16)
  %18 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %19 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AUDIO_PORT_IC_TXFIFO_INT_MSK, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 0)
  %23 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %24 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AUDIO_PORT_IC_TXFIFO_OP, align 4
  %27 = call i32 @regmap_write(i32 %25, i32 %26, i32 0)
  %28 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %29 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AUDIO_PORT_IC_TXFIFO_OP, align 4
  %32 = load i32, i32* @AUDIO_FIFO_START, align 4
  %33 = load i32, i32* @AUDIO_FIFO_START, align 4
  %34 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %2, align 8
  %36 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AUDIO_PORT_IC_CODEC_TX_CTRL, align 4
  %39 = load i32, i32* @IC_TX_ENABLE, align 4
  %40 = load i32, i32* @IC_TX_ENABLE, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
