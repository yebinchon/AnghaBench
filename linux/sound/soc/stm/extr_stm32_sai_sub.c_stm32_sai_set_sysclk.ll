; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i64, i32 }

@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@STM_SAI_CR1_REGX = common dso_local global i32 0, align 4
@SAI_XCR1_NODIV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Active streams have incompatible rates\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not set mclk rate\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SAI MCLK frequency is %uHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @stm32_sai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stm32_sai_sub_data*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.stm32_sai_sub_data* %13, %struct.stm32_sai_sub_data** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %93

17:                                               ; preds = %4
  %18 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %19 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %93

22:                                               ; preds = %17
  %23 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %27 = load i32, i32* @SAI_XCR1_NODIV, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @SAI_XCR1_NODIV, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 0, %30 ], [ %32, %31 ]
  %35 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %94

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %45 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %50 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @clk_rate_exclusive_put(i64 %51)
  %53 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %54 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  store i32 0, i32* %5, align 4
  br label %94

56:                                               ; preds = %40
  %57 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @stm32_sai_set_parent_clock(%struct.stm32_sai_sub_data* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %94

64:                                               ; preds = %56
  %65 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %66 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @clk_set_rate_exclusive(i64 %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %64
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)
  %82 = call i32 @dev_err(i32 %75, i8* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %94

84:                                               ; preds = %64
  %85 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %10, align 8
  %92 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %84, %17, %4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %72, %62, %55, %38
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_rate_exclusive_put(i64) #1

declare dso_local i32 @stm32_sai_set_parent_clock(%struct.stm32_sai_sub_data*, i32) #1

declare dso_local i32 @clk_set_rate_exclusive(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
