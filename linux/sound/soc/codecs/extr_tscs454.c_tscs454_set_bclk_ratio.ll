; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_set_bclk_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_set_bclk_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"set_bclk_ratio() id = %d ratio = %u\0A\00", align 1
@FM_I2SCMC_BCMP1 = common dso_local global i32 0, align 4
@FB_I2SCMC_BCMP1 = common dso_local global i32 0, align 4
@FM_I2SCMC_BCMP2 = common dso_local global i32 0, align 4
@FB_I2SCMC_BCMP2 = common dso_local global i32 0, align 4
@FM_I2SCMC_BCMP3 = common dso_local global i32 0, align 4
@FB_I2SCMC_BCMP3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown audio interface (%d)\0A\00", align 1
@I2SCMC_BCMP_32X = common dso_local global i32 0, align 4
@I2SCMC_BCMP_40X = common dso_local global i32 0, align 4
@I2SCMC_BCMP_64X = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported bclk ratio (%d)\0A\00", align 1
@R_I2SCMC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to set DAI BCLK ratio (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @tscs454_set_bclk_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs454_set_bclk_ratio(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %34 [
    i32 130, label %25
    i32 129, label %28
    i32 128, label %31
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @FM_I2SCMC_BCMP1, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @FB_I2SCMC_BCMP1, align 4
  store i32 %27, i32* %10, align 4
  br label %43

28:                                               ; preds = %2
  %29 = load i32, i32* @FM_I2SCMC_BCMP2, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @FB_I2SCMC_BCMP2, align 4
  store i32 %30, i32* %10, align 4
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* @FM_I2SCMC_BCMP3, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @FB_I2SCMC_BCMP3, align 4
  store i32 %33, i32* %10, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %78

43:                                               ; preds = %31, %28, %25
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %51 [
    i32 32, label %45
    i32 40, label %47
    i32 64, label %49
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @I2SCMC_BCMP_32X, align 4
  store i32 %46, i32* %9, align 4
  br label %60

47:                                               ; preds = %43
  %48 = load i32, i32* @I2SCMC_BCMP_40X, align 4
  store i32 %48, i32* %9, align 4
  br label %60

49:                                               ; preds = %43
  %50 = load i32, i32* @I2SCMC_BCMP_64X, align 4
  store i32 %50, i32* %9, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %49, %47, %45
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = load i32, i32* @R_I2SCMC, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %70, %51, %34
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
