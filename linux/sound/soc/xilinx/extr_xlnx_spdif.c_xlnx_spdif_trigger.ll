; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.spdif_dev_data = type { i64 }

@XSPDIF_CONTROL_REG = common dso_local global i64 0, align 8
@XSPDIF_CORE_ENABLE_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @xlnx_spdif_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_spdif_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.spdif_dev_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.spdif_dev_data* @dev_get_drvdata(i32 %12)
  store %struct.spdif_dev_data* %13, %struct.spdif_dev_data** %9, align 8
  %14 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %9, align 8
  %15 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XSPDIF_CONTROL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %53 [
    i32 130, label %21
    i32 131, label %21
    i32 132, label %21
    i32 129, label %41
    i32 128, label %41
    i32 133, label %41
  ]

21:                                               ; preds = %3, %3, %3
  %22 = load i32, i32* @XSPDIF_CORE_ENABLE_MASK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %9, align 8
  %27 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XSPDIF_CONTROL_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %39 = call i32 @rx_stream_detect(%struct.snd_soc_dai* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %21
  br label %56

41:                                               ; preds = %3, %3, %3
  %42 = load i32, i32* @XSPDIF_CORE_ENABLE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %9, align 8
  %48 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XSPDIF_CONTROL_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  br label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %41, %40
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.spdif_dev_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rx_stream_detect(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
