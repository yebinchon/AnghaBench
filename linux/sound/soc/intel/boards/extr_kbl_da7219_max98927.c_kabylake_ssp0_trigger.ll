; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kabylake_ssp0_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kabylake_ssp0_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, i32, %struct.snd_soc_dai** }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i8*, i8* }
%struct.snd_soc_dapm_context = type { i32 }

@MAX98927_DEV0_NAME = common dso_local global i32 0, align 4
@MAX98927_DEV1_NAME = common dso_local global i32 0, align 4
@MAX98373_DEV0_NAME = common dso_local global i32 0, align 4
@MAX98373_DEV1_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s Spk\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to enable %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to disable %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @kabylake_ssp0_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_ssp0_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.snd_soc_dapm_context*, align 8
  %13 = alloca [20 x i8], align 16
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %107, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %110

23:                                               ; preds = %17
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %24, i32 0, i32 2
  %26 = load %struct.snd_soc_dai**, %struct.snd_soc_dai*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.snd_soc_dai*, %struct.snd_soc_dai** %26, i64 %28
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %29, align 8
  store %struct.snd_soc_dai* %30, %struct.snd_soc_dai** %9, align 8
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %32, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %37, align 8
  store %struct.snd_soc_component* %38, %struct.snd_soc_component** %11, align 8
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %40 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %39)
  store %struct.snd_soc_dapm_context* %40, %struct.snd_soc_dapm_context** %12, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @MAX98927_DEV0_NAME, align 4
  %43 = call i64 @strcmp(i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %23
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @MAX98927_DEV1_NAME, align 4
  %48 = call i64 @strcmp(i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @MAX98373_DEV0_NAME, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @MAX98373_DEV1_NAME, align 4
  %58 = call i64 @strcmp(i8* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %107

61:                                               ; preds = %55, %50, %45, %23
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i8* %63)
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 0
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %66, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @snprintf(i8* %62, i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %106 [
    i32 130, label %72
    i32 131, label %72
    i32 132, label %72
    i32 129, label %89
    i32 128, label %89
    i32 133, label %89
  ]

72:                                               ; preds = %61, %61, %61
  %73 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %12, align 8
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %75 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_dapm_context* %73, i8* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %80 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %111

86:                                               ; preds = %72
  %87 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %12, align 8
  %88 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %87)
  br label %106

89:                                               ; preds = %61, %61, %61
  %90 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %12, align 8
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %92 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %90, i8* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %97 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %111

103:                                              ; preds = %89
  %104 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %12, align 8
  %105 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %104)
  br label %106

106:                                              ; preds = %61, %103, %86
  br label %107

107:                                              ; preds = %106, %60
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %17

110:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %95, %78
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
