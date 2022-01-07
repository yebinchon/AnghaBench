; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8994_priv = type { %struct.wm8994_micdet*, %struct.wm8994* }
%struct.wm8994_micdet = type { i32, %struct.snd_soc_jack* }
%struct.wm8994 = type { i64 }

@WM8994 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Not a WM8994\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid MICBIAS %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to configure MICBIAS%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Configuring microphone detection on %d %p\0A\00", align 1
@WM8994_MICD_ENA = common dso_local global i32 0, align 4
@WM8994_MICBIAS = common dso_local global i32 0, align 4
@WM8994_IRQ_DEBOUNCE = common dso_local global i32 0, align 4
@WM8994_MIC1_DET_DB_MASK = common dso_local global i32 0, align 4
@WM8994_MIC1_SHRT_DB_MASK = common dso_local global i32 0, align 4
@WM8994_MIC2_DET_DB_MASK = common dso_local global i32 0, align 4
@WM8994_MIC2_SHRT_DB_MASK = common dso_local global i32 0, align 4
@WM8994_MIC1_DET_DB = common dso_local global i32 0, align 4
@WM8994_MIC1_SHRT_DB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8994_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca %struct.wm8994_priv*, align 8
  %10 = alloca %struct.wm8994_micdet*, align 8
  %11 = alloca %struct.wm8994*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %14)
  store %struct.snd_soc_dapm_context* %15, %struct.snd_soc_dapm_context** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8994_priv* %17, %struct.wm8994_priv** %9, align 8
  %18 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %19 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %18, i32 0, i32 1
  %20 = load %struct.wm8994*, %struct.wm8994** %19, align 8
  store %struct.wm8994* %20, %struct.wm8994** %11, align 8
  %21 = load %struct.wm8994*, %struct.wm8994** %11, align 8
  %22 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WM8994, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_warn(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %132

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %63 [
    i32 1, label %35
    i32 2, label %49
  ]

35:                                               ; preds = %33
  %36 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %37 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %36, i32 0, i32 0
  %38 = load %struct.wm8994_micdet*, %struct.wm8994_micdet** %37, align 8
  %39 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %38, i64 0
  store %struct.wm8994_micdet* %39, %struct.wm8994_micdet** %10, align 8
  %40 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %41 = icmp ne %struct.snd_soc_jack* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %44 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %13, align 4
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %47 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %71

49:                                               ; preds = %33
  %50 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %51 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %50, i32 0, i32 0
  %52 = load %struct.wm8994_micdet*, %struct.wm8994_micdet** %51, align 8
  %53 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %52, i64 1
  store %struct.wm8994_micdet* %53, %struct.wm8994_micdet** %10, align 8
  %54 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %55 = icmp ne %struct.snd_soc_jack* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %58 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %13, align 4
  br label %62

59:                                               ; preds = %49
  %60 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %61 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %71

63:                                               ; preds = %33
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32, i8*, ...) @dev_warn(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %132

71:                                               ; preds = %62, %48
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 (i32, i8*, ...) @dev_warn(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %71
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %87 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %85, %struct.snd_soc_jack* %86)
  %88 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %89 = load %struct.wm8994_micdet*, %struct.wm8994_micdet** %10, align 8
  %90 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %89, i32 0, i32 1
  store %struct.snd_soc_jack* %88, %struct.snd_soc_jack** %90, align 8
  %91 = load %struct.wm8994_micdet*, %struct.wm8994_micdet** %10, align 8
  %92 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %94 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %93, i32 0, i32 0
  %95 = load %struct.wm8994_micdet*, %struct.wm8994_micdet** %94, align 8
  %96 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %95, i64 0
  %97 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %96, i32 0, i32 1
  %98 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %97, align 8
  %99 = icmp ne %struct.snd_soc_jack* %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %81
  %101 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %102 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %101, i32 0, i32 0
  %103 = load %struct.wm8994_micdet*, %struct.wm8994_micdet** %102, align 8
  %104 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %103, i64 1
  %105 = getelementptr inbounds %struct.wm8994_micdet, %struct.wm8994_micdet* %104, i32 0, i32 1
  %106 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %105, align 8
  %107 = icmp ne %struct.snd_soc_jack* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %100, %81
  %109 = load i32, i32* @WM8994_MICD_ENA, align 4
  store i32 %109, i32* %12, align 4
  br label %111

110:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %110, %108
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %113 = load i32, i32* @WM8994_MICBIAS, align 4
  %114 = load i32, i32* @WM8994_MICD_ENA, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %118 = load i32, i32* @WM8994_IRQ_DEBOUNCE, align 4
  %119 = load i32, i32* @WM8994_MIC1_DET_DB_MASK, align 4
  %120 = load i32, i32* @WM8994_MIC1_SHRT_DB_MASK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @WM8994_MIC2_DET_DB_MASK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @WM8994_MIC2_SHRT_DB_MASK, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @WM8994_MIC1_DET_DB, align 4
  %127 = load i32, i32* @WM8994_MIC1_SHRT_DB, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %117, i32 %118, i32 %125, i32 %128)
  %130 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %131 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %111, %63, %26
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.snd_soc_jack*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
