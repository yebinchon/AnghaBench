; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32, i32 }
%struct.snd_pcm_substream = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ITER = common dso_local global i32 0, align 4
@IRER = common dso_local global i32 0, align 4
@CER = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2s_dev*, %struct.snd_pcm_substream*)* @i2s_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_stop(%struct.dw_i2s_dev* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.dw_i2s_dev*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %5 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @i2s_clear_irqs(%struct.dw_i2s_dev* %5, i64 %8)
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %17 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ITER, align 4
  %20 = call i32 @i2s_write_reg(i32 %18, i32 %19, i32 0)
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %23 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IRER, align 4
  %26 = call i32 @i2s_write_reg(i32 %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @i2s_disable_irqs(%struct.dw_i2s_dev* %28, i64 %31, i32 8)
  %33 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %34 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %27
  %38 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %39 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CER, align 4
  %42 = call i32 @i2s_write_reg(i32 %40, i32 %41, i32 0)
  %43 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %44 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IER, align 4
  %47 = call i32 @i2s_write_reg(i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %37, %27
  ret void
}

declare dso_local i32 @i2s_clear_irqs(%struct.dw_i2s_dev*, i64) #1

declare dso_local i32 @i2s_write_reg(i32, i32, i32) #1

declare dso_local i32 @i2s_disable_irqs(%struct.dw_i2s_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
