; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_new_dai_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_new_dai_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i64 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_dapm_widget*, %struct.TYPE_6__*, %struct.snd_soc_dapm_widget* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dai*, i64, i64, i32, i32 }

@SND_SOC_NOPM = common dso_local global i32 0, align 4
@snd_soc_dapm_dai_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ASoC: adding %s widget\0A\00", align 1
@snd_soc_dapm_dai_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_new_dai_widgets(%struct.snd_soc_dapm_context* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget, align 8
  %7 = alloca %struct.snd_soc_dapm_widget*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = call i32 @memset(%struct.snd_soc_dapm_widget* %6, i32 0, i32 32)
  %18 = load i32, i32* @SND_SOC_NOPM, align 4
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %2
  %28 = load i32, i32* @snd_soc_dapm_dai_in, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dev_dbg(i64 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %51 = call %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(%struct.snd_soc_dapm_context* %50, %struct.snd_soc_dapm_widget* %6)
  store %struct.snd_soc_dapm_widget* %51, %struct.snd_soc_dapm_widget** %7, align 8
  %52 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %53 = call i64 @IS_ERR(%struct.snd_soc_dapm_widget* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %27
  %56 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %57 = call i32 @PTR_ERR(%struct.snd_soc_dapm_widget* %56)
  store i32 %57, i32* %3, align 4
  br label %112

58:                                               ; preds = %27
  %59 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %60 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %60, i32 0, i32 0
  store %struct.snd_soc_dai* %59, %struct.snd_soc_dai** %61, align 8
  %62 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %63, i32 0, i32 3
  store %struct.snd_soc_dapm_widget* %62, %struct.snd_soc_dapm_widget** %64, align 8
  br label %65

65:                                               ; preds = %58, %2
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %65
  %74 = load i32, i32* @snd_soc_dapm_dai_out, align 4
  %75 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 3
  store i32 %74, i32* %75, align 8
  %76 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %77 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 2
  store i64 %88, i64* %89, align 8
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dev_dbg(i64 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %94)
  %96 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %97 = call %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(%struct.snd_soc_dapm_context* %96, %struct.snd_soc_dapm_widget* %6)
  store %struct.snd_soc_dapm_widget* %97, %struct.snd_soc_dapm_widget** %7, align 8
  %98 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %99 = call i64 @IS_ERR(%struct.snd_soc_dapm_widget* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %73
  %102 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %103 = call i32 @PTR_ERR(%struct.snd_soc_dapm_widget* %102)
  store i32 %103, i32* %3, align 4
  br label %112

104:                                              ; preds = %73
  %105 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %106 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %107 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %106, i32 0, i32 0
  store %struct.snd_soc_dai* %105, %struct.snd_soc_dai** %107, align 8
  %108 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %109 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %109, i32 0, i32 1
  store %struct.snd_soc_dapm_widget* %108, %struct.snd_soc_dapm_widget** %110, align 8
  br label %111

111:                                              ; preds = %104, %65
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %101, %55
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.snd_soc_dapm_widget*, i32, i32) #1

declare dso_local i32 @dev_dbg(i64, i8*, i64) #1

declare dso_local %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_widget*) #1

declare dso_local i64 @IS_ERR(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @PTR_ERR(%struct.snd_soc_dapm_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
