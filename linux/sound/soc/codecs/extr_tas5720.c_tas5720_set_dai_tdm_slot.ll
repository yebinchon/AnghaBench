; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tas5720_data = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"tx masks must not be 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"slot selection out of bounds (%u)\0A\00", align 1
@TAS5720_DIGITAL_CTRL1_REG = common dso_local global i32 0, align 4
@TAS5720_TDM_CFG_SRC = common dso_local global i32 0, align 4
@TAS5720_DIGITAL_CTRL2_REG = common dso_local global i32 0, align 4
@TAS5720_TDM_SLOT_SEL_MASK = common dso_local global i32 0, align 4
@TAS5722_DIGITAL_CTRL2_REG = common dso_local global i32 0, align 4
@TAS5722_TDM_SLOT_16B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error configuring TDM mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @tas5720_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5720_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.tas5720_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %20 = call %struct.tas5720_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.tas5720_data* %20, %struct.tas5720_data** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %90

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @__ffs(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ugt i32 %33, 7
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %90

43:                                               ; preds = %30
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %45 = load i32, i32* @TAS5720_DIGITAL_CTRL1_REG, align 4
  %46 = load i32, i32* @TAS5720_TDM_CFG_SRC, align 4
  %47 = load i32, i32* @TAS5720_TDM_CFG_SRC, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %83

52:                                               ; preds = %43
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %54 = load i32, i32* @TAS5720_DIGITAL_CTRL2_REG, align 4
  %55 = load i32, i32* @TAS5720_TDM_SLOT_SEL_MASK, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %83

61:                                               ; preds = %52
  %62 = load %struct.tas5720_data*, %struct.tas5720_data** %13, align 8
  %63 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %81 [
    i32 128, label %65
  ]

65:                                               ; preds = %61
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %67 = load i32, i32* @TAS5722_DIGITAL_CTRL2_REG, align 4
  %68 = load i32, i32* @TAS5722_TDM_SLOT_16B, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 16
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @TAS5722_TDM_SLOT_16B, align 4
  br label %74

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %83

80:                                               ; preds = %74
  br label %82

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %80
  store i32 0, i32* %6, align 4
  br label %90

83:                                               ; preds = %79, %60, %51
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %83, %82, %35, %23
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.tas5720_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
