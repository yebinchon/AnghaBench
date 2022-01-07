; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.spdif_dev_data = type { i64, i32 }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@AES_SAMPLE_WIDTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XSPDIF_CONTROL_REG = common dso_local global i64 0, align 8
@XSPDIF_CLOCK_CONFIG_BITS_MASK = common dso_local global i32 0, align 4
@XSPDIF_CLOCK_CONFIG_BITS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @xlnx_spdif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_spdif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spdif_dev_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.spdif_dev_data* @dev_get_drvdata(i32 %14)
  store %struct.spdif_dev_data* %15, %struct.spdif_dev_data** %11, align 8
  %16 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %11, align 8
  %17 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_CHANNELS, align 4
  %20 = load i32, i32* @AES_SAMPLE_WIDTH, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = mul nsw i32 %21, %23
  %25 = call i32 @DIV_ROUND_CLOSEST(i32 %18, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %34 [
    i32 4, label %27
    i32 8, label %28
    i32 16, label %29
    i32 24, label %30
    i32 32, label %31
    i32 48, label %32
    i32 64, label %33
  ]

27:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %37

28:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %37

29:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %37

30:                                               ; preds = %3
  store i32 3, i32* %10, align 4
  br label %37

31:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  br label %37

32:                                               ; preds = %3
  store i32 5, i32* %10, align 4
  br label %37

33:                                               ; preds = %3
  store i32 6, i32* %10, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %33, %32, %31, %30, %29, %28, %27
  %38 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %11, align 8
  %39 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XSPDIF_CONTROL_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @XSPDIF_CLOCK_CONFIG_BITS_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @XSPDIF_CLOCK_CONFIG_BITS_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %11, align 8
  %55 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XSPDIF_CONTROL_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %37, %34
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.spdif_dev_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
