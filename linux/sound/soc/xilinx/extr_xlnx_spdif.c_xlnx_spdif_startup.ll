; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.spdif_dev_data = type { i64 }

@XSPDIF_CONTROL_REG = common dso_local global i64 0, align 8
@XSPDIF_FIFO_FLUSH_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@XSPDIF_CH_STS_MASK = common dso_local global i32 0, align 4
@XSPDIF_IRQ_ENABLE_REG = common dso_local global i64 0, align 8
@XSPDIF_GLOBAL_IRQ_ENABLE = common dso_local global i32 0, align 4
@XSPDIF_GLOBAL_IRQ_ENABLE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @xlnx_spdif_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_spdif_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spdif_dev_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.spdif_dev_data* @dev_get_drvdata(i32 %9)
  store %struct.spdif_dev_data* %10, %struct.spdif_dev_data** %6, align 8
  %11 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %6, align 8
  %12 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XSPDIF_CONTROL_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @XSPDIF_FIFO_FLUSH_MASK, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %6, align 8
  %22 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XSPDIF_CONTROL_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load i32, i32* @XSPDIF_CH_STS_MASK, align 4
  %34 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %6, align 8
  %35 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XSPDIF_IRQ_ENABLE_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* @XSPDIF_GLOBAL_IRQ_ENABLE, align 4
  %41 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %6, align 8
  %42 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XSPDIF_GLOBAL_IRQ_ENABLE_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %32, %2
  ret i32 0
}

declare dso_local %struct.spdif_dev_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
