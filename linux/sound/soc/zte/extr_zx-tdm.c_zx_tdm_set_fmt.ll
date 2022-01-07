; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.zx_tdm_info = type { i32 }

@REG_TIMING_CTRL = common dso_local global i32 0, align 4
@TIMING_SYNC_WIDTH_MASK = common dso_local global i64 0, align 8
@TIMING_MS_MASK = common dso_local global i64 0, align 8
@TIMING_DEFAULT_WIDTH = common dso_local global i64 0, align 8
@TIMING_WIDTH_SHIFT = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@TIMING_MASTER_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown master/slave format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @zx_tdm_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tdm_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zx_tdm_info*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.zx_tdm_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.zx_tdm_info* %9, %struct.zx_tdm_info** %6, align 8
  %10 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %6, align 8
  %11 = load i32, i32* @REG_TIMING_CTRL, align 4
  %12 = call i64 @zx_tdm_readl(%struct.zx_tdm_info* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @TIMING_SYNC_WIDTH_MASK, align 8
  %14 = load i64, i64* @TIMING_MS_MASK, align 8
  %15 = or i64 %13, %14
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %7, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @TIMING_DEFAULT_WIDTH, align 8
  %20 = load i64, i64* @TIMING_WIDTH_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = load i64, i64* %7, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %40 [
    i32 129, label %27
    i32 128, label %33
  ]

27:                                               ; preds = %2
  %28 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %6, align 8
  %29 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i64, i64* @TIMING_MASTER_MODE, align 8
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %6, align 8
  %35 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i64, i64* @TIMING_MASTER_MODE, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %33, %27
  %48 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %6, align 8
  %49 = load i32, i32* @REG_TIMING_CTRL, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %48, i32 %49, i64 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.zx_tdm_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @zx_tdm_readl(%struct.zx_tdm_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @zx_tdm_writel(%struct.zx_tdm_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
