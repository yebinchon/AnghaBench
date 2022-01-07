; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_max98927.c_platform_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_max98927.c_platform_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.kbl_rt5663_private = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Can't set rate for mclk, err: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't enable mclk, err: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't set rate for sclk, err: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Can't enable sclk, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @platform_clock_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_clock_control(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca %struct.snd_soc_card*, align 8
  %10 = alloca %struct.kbl_rt5663_private*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  store %struct.snd_soc_dapm_context* %14, %struct.snd_soc_dapm_context** %8, align 8
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %16, align 8
  store %struct.snd_soc_card* %17, %struct.snd_soc_card** %9, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %19 = call %struct.kbl_rt5663_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %18)
  store %struct.kbl_rt5663_private* %19, %struct.kbl_rt5663_private** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %94 [
    i32 128, label %21
    i32 129, label %85
  ]

21:                                               ; preds = %3
  %22 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %23 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_set_rate(i32 %24, i32 24000000)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %30 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %96

35:                                               ; preds = %21
  %36 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %37 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_prepare_enable(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %96

49:                                               ; preds = %35
  %50 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %51 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_set_rate(i32 %52, i32 3072000)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %58 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %63 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_disable_unprepare(i32 %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %96

67:                                               ; preds = %49
  %68 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %69 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_prepare_enable(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %76 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %81 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_disable_unprepare(i32 %82)
  br label %84

84:                                               ; preds = %74, %67
  br label %95

85:                                               ; preds = %3
  %86 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %87 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clk_disable_unprepare(i32 %88)
  %90 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %10, align 8
  %91 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_disable_unprepare(i32 %92)
  br label %95

94:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

95:                                               ; preds = %85, %84
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %94, %56, %42, %28
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.kbl_rt5663_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
