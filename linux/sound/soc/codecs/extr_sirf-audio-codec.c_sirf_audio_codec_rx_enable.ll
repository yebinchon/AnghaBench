; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_rx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_audio_codec = type { i32 }

@AUDIO_PORT_IC_RXFIFO_OP = common dso_local global i32 0, align 4
@AUDIO_FIFO_RESET = common dso_local global i32 0, align 4
@AUDIO_PORT_IC_RXFIFO_INT_MSK = common dso_local global i32 0, align 4
@AUDIO_FIFO_START = common dso_local global i32 0, align 4
@AUDIO_PORT_IC_CODEC_RX_CTRL = common dso_local global i32 0, align 4
@IC_RX_ENABLE_MONO = common dso_local global i32 0, align 4
@IC_RX_ENABLE_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirf_audio_codec*, i32)* @sirf_audio_codec_rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_audio_codec_rx_enable(%struct.sirf_audio_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.sirf_audio_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.sirf_audio_codec* %0, %struct.sirf_audio_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %3, align 8
  %6 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AUDIO_PORT_IC_RXFIFO_OP, align 4
  %9 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %10 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %3, align 8
  %13 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AUDIO_PORT_IC_RXFIFO_OP, align 4
  %16 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %17 = load i32, i32* @AUDIO_FIFO_RESET, align 4
  %18 = xor i32 %17, -1
  %19 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %3, align 8
  %21 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AUDIO_PORT_IC_RXFIFO_INT_MSK, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 0)
  %25 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %3, align 8
  %26 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AUDIO_PORT_IC_RXFIFO_OP, align 4
  %29 = call i32 @regmap_write(i32 %27, i32 %28, i32 0)
  %30 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %3, align 8
  %31 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AUDIO_PORT_IC_RXFIFO_OP, align 4
  %34 = load i32, i32* @AUDIO_FIFO_START, align 4
  %35 = load i32, i32* @AUDIO_FIFO_START, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %3, align 8
  %41 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AUDIO_PORT_IC_CODEC_RX_CTRL, align 4
  %44 = load i32, i32* @IC_RX_ENABLE_MONO, align 4
  %45 = load i32, i32* @IC_RX_ENABLE_MONO, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  br label %55

47:                                               ; preds = %2
  %48 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %3, align 8
  %49 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AUDIO_PORT_IC_CODEC_RX_CTRL, align 4
  %52 = load i32, i32* @IC_RX_ENABLE_STEREO, align 4
  %53 = load i32, i32* @IC_RX_ENABLE_STEREO, align 4
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
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
