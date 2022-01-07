; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_sel_asrc_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_sel_asrc_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT5663_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5663_DA_STO1_TRACK_MASK = common dso_local global i32 0, align 4
@RT5663_DA_STO1_TRACK_SHIFT = common dso_local global i32 0, align 4
@RT5663_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5663_V2_AD_STO1_TRACK_MASK = common dso_local global i32 0, align 4
@RT5663_V2_AD_STO1_TRACK_SHIFT = common dso_local global i32 0, align 4
@RT5663_AD_STO1_TRACK_MASK = common dso_local global i32 0, align 4
@RT5663_AD_STO1_TRACK_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown CODEC Version\0A\00", align 1
@RT5663_ASRC_2 = common dso_local global i32 0, align 4
@RT5663_ASRC_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5663_sel_asrc_clk_src(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt5663_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt5663_priv* %14, %struct.rt5663_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %17 [
    i32 128, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %3, %3
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %86

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @RT5663_DA_STEREO_FILTER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* @RT5663_DA_STO1_TRACK_MASK, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RT5663_DA_STO1_TRACK_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @RT5663_AD_STEREO_FILTER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load %struct.rt5663_priv*, %struct.rt5663_priv** %8, align 8
  %41 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %61 [
    i32 130, label %43
    i32 131, label %52
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @RT5663_V2_AD_STO1_TRACK_MASK, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @RT5663_V2_AD_STO1_TRACK_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %66

52:                                               ; preds = %39
  %53 = load i32, i32* @RT5663_AD_STO1_TRACK_MASK, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @RT5663_AD_STO1_TRACK_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %66

61:                                               ; preds = %39
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %63 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %52, %43
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %72 = load i32, i32* @RT5663_ASRC_2, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %81 = load i32, i32* @RT5663_ASRC_3, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %17
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
