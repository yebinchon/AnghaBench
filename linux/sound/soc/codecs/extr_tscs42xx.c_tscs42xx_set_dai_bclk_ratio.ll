; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_tscs42xx_set_dai_bclk_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_tscs42xx_set_dai_bclk_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tscs42xx = type { i32, i32 }

@RV_DACSR_DBCM_32 = common dso_local global i32 0, align 4
@RV_DACSR_DBCM_40 = common dso_local global i32 0, align 4
@RV_DACSR_DBCM_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported bclk ratio (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R_DACSR = common dso_local global i32 0, align 4
@RM_DACSR_DBCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set DAC BCLK ratio (%d)\0A\00", align 1
@R_ADCSR = common dso_local global i32 0, align 4
@RM_ADCSR_ABCM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to set ADC BCLK ratio (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @tscs42xx_set_dai_bclk_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs42xx_set_dai_bclk_ratio(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.tscs42xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tscs42xx* %14, %struct.tscs42xx** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 32, label %16
    i32 40, label %18
    i32 64, label %20
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @RV_DACSR_DBCM_32, align 4
  store i32 %17, i32* %8, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @RV_DACSR_DBCM_40, align 4
  store i32 %19, i32* %8, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @RV_DACSR_DBCM_64, align 4
  store i32 %21, i32* %8, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %20, %18, %16
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %32 = load i32, i32* @R_DACSR, align 4
  %33 = load i32, i32* @RM_DACSR_DBCM, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %30
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %47 = load i32, i32* @R_ADCSR, align 4
  %48 = load i32, i32* @RM_ADCSR_ABCM, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %45
  %61 = load %struct.tscs42xx*, %struct.tscs42xx** %7, align 8
  %62 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %61, i32 0, i32 1
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.tscs42xx*, %struct.tscs42xx** %7, align 8
  %66 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tscs42xx*, %struct.tscs42xx** %7, align 8
  %68 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %53, %38, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
