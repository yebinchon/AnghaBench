; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32, %struct.i2s_clk_config_data }
%struct.i2s_clk_config_data = type { i32 }
%struct.snd_pcm_substream = type { i64 }

@IER = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ITER = common dso_local global i32 0, align 4
@IRER = common dso_local global i32 0, align 4
@CER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2s_dev*, %struct.snd_pcm_substream*)* @i2s_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_start(%struct.dw_i2s_dev* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.dw_i2s_dev*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.i2s_clk_config_data*, align 8
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %6 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %7 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %6, i32 0, i32 1
  store %struct.i2s_clk_config_data* %7, %struct.i2s_clk_config_data** %5, align 8
  %8 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %9 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IER, align 4
  %12 = call i32 @i2s_write_reg(i32 %10, i32 %11, i32 1)
  %13 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.i2s_clk_config_data*, %struct.i2s_clk_config_data** %5, align 8
  %18 = getelementptr inbounds %struct.i2s_clk_config_data, %struct.i2s_clk_config_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @i2s_enable_irqs(%struct.dw_i2s_dev* %13, i64 %16, i32 %19)
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %28 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ITER, align 4
  %31 = call i32 @i2s_write_reg(i32 %29, i32 %30, i32 1)
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %34 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IRER, align 4
  %37 = call i32 @i2s_write_reg(i32 %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %40 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CER, align 4
  %43 = call i32 @i2s_write_reg(i32 %41, i32 %42, i32 1)
  ret void
}

declare dso_local i32 @i2s_write_reg(i32, i32, i32) #1

declare dso_local i32 @i2s_enable_irqs(%struct.dw_i2s_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
