; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.zx_i2s_info = type { i32, i64 }

@ZX_I2S_TIMING_CTRL = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_TIMING_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_ALIGN_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_TEAK_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_SYNC_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_MS_MASK = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ZX_I2S_TIMING_I2S = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_STD_I2S = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_MSB_JUSTIF = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_LSB_JUSTIF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unknown i2s timing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ZX_I2S_TIMING_SLAVE = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_MAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown master/slave format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @zx_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zx_i2s_info*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.zx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.zx_i2s_info* %9, %struct.zx_i2s_info** %6, align 8
  %10 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %6, align 8
  %11 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZX_I2S_TIMING_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl_relaxed(i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* @ZX_I2S_TIMING_TIMING_MASK, align 8
  %17 = load i64, i64* @ZX_I2S_TIMING_ALIGN_MASK, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @ZX_I2S_TIMING_TEAK_MASK, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @ZX_I2S_TIMING_SYNC_MASK, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @ZX_I2S_TIMING_MS_MASK, align 8
  %24 = or i64 %22, %23
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %49 [
    i32 130, label %31
    i32 129, label %37
    i32 128, label %43
  ]

31:                                               ; preds = %2
  %32 = load i64, i64* @ZX_I2S_TIMING_I2S, align 8
  %33 = load i64, i64* @ZX_I2S_TIMING_STD_I2S, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %7, align 8
  br label %56

37:                                               ; preds = %2
  %38 = load i64, i64* @ZX_I2S_TIMING_I2S, align 8
  %39 = load i64, i64* @ZX_I2S_TIMING_MSB_JUSTIF, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %56

43:                                               ; preds = %2
  %44 = load i64, i64* @ZX_I2S_TIMING_I2S, align 8
  %45 = load i64, i64* @ZX_I2S_TIMING_LSB_JUSTIF, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %56

49:                                               ; preds = %2
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %87

56:                                               ; preds = %43, %37, %31
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %72 [
    i32 132, label %60
    i32 131, label %66
  ]

60:                                               ; preds = %56
  %61 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %6, align 8
  %62 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load i64, i64* @ZX_I2S_TIMING_SLAVE, align 8
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  br label %79

66:                                               ; preds = %56
  %67 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %6, align 8
  %68 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i64, i64* @ZX_I2S_TIMING_MAST, align 8
  %70 = load i64, i64* %7, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %7, align 8
  br label %79

72:                                               ; preds = %56
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %87

79:                                               ; preds = %66, %60
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %6, align 8
  %82 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ZX_I2S_TIMING_CTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel_relaxed(i64 %80, i64 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %72, %49
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.zx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
