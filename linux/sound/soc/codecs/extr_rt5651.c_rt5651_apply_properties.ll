; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_apply_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_apply_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5651_priv = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"realtek,in2-differential\00", align 1
@RT5651_IN1_IN2 = common dso_local global i32 0, align 4
@RT5651_IN_DF2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"realtek,dmic-en\00", align 1
@RT5651_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5651_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5651_GP2_PIN_DMIC1_SCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"realtek,jack-detect-source\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"realtek,jack-detect-not-inverted\00", align 1
@RT5651_MIC1_OVTH_2000UA = common dso_local global i8* null, align 8
@RT5651_MIC_OVCD_SF_0P75 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"realtek,over-current-threshold-microamp\00", align 1
@RT5651_MIC1_OVTH_600UA = common dso_local global i8* null, align 8
@RT5651_MIC1_OVTH_1500UA = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [82 x i8] c"Warning: Invalid over-current-threshold-microamp value: %d, defaulting to 2000uA\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"realtek,over-current-scale-factor\00", align 1
@RT5651_OVCD_SF_1P5 = common dso_local global i32 0, align 4
@RT5651_MIC_OVCD_SF_SFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [74 x i8] c"Warning: Invalid over-current-scale-factor value: %d, defaulting to 0.75\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @rt5651_apply_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5651_apply_properties(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5651_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.rt5651_priv* %6, %struct.rt5651_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @device_property_read_bool(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = load i32, i32* @RT5651_IN1_IN2, align 4
  %15 = load i32, i32* @RT5651_IN_DF2, align 4
  %16 = load i32, i32* @RT5651_IN_DF2, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @device_property_read_bool(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %26 = load i32, i32* @RT5651_GPIO_CTRL1, align 4
  %27 = load i32, i32* @RT5651_GP2_PIN_MASK, align 4
  %28 = load i32, i32* @RT5651_GP2_PIN_DMIC1_SCL, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @device_property_read_u32(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @device_property_read_bool(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %48 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** @RT5651_MIC1_OVTH_2000UA, align 8
  %51 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @RT5651_MIC_OVCD_SF_0P75, align 4
  %54 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %55 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @device_property_read_u32(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32* %4)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %49
  %62 = load i32, i32* %4, align 4
  switch i32 %62, label %75 [
    i32 600, label %63
    i32 1500, label %67
    i32 2000, label %71
  ]

63:                                               ; preds = %61
  %64 = load i8*, i8** @RT5651_MIC1_OVTH_600UA, align 8
  %65 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %81

67:                                               ; preds = %61
  %68 = load i8*, i8** @RT5651_MIC1_OVTH_1500UA, align 8
  %69 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %81

71:                                               ; preds = %61
  %72 = load i8*, i8** @RT5651_MIC1_OVTH_2000UA, align 8
  %73 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %81

75:                                               ; preds = %61
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %77 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_warn(i32 %78, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %71, %67, %63
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @device_property_read_u32(i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32* %4)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @RT5651_OVCD_SF_1P5, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @RT5651_MIC_OVCD_SF_SFT, align 4
  %95 = shl i32 %93, %94
  %96 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %97 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %104

98:                                               ; preds = %88
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %100 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %82
  ret void
}

declare dso_local %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @device_property_read_bool(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
