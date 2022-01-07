; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_post_sequence_async.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_post_sequence_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i64, i64, i64 }

@SND_SOC_BIAS_PREPARE = common dso_local global i64 0, align 8
@SND_SOC_BIAS_STANDBY = common dso_local global i64 0, align 8
@SND_SOC_BIAS_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ASoC: Failed to apply standby bias: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ASoC: Failed to turn off bias: %d\0A\00", align 1
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"ASoC: Failed to apply active bias: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dapm_post_sequence_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_post_sequence_async(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.snd_soc_dapm_context*
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %5, align 8
  %9 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SND_SOC_BIAS_PREPARE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SND_SOC_BIAS_STANDBY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20, %14
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %28 = load i64, i64* @SND_SOC_BIAS_STANDBY, align 8
  %29 = call i32 @snd_soc_dapm_set_bias_level(%struct.snd_soc_dapm_context* %27, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i64 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %20, %2
  %40 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SND_SOC_BIAS_STANDBY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %53 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %54 = call i32 @snd_soc_dapm_set_bias_level(%struct.snd_soc_dapm_context* %52, i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_err(i64 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @pm_runtime_put(i64 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %45, %39
  %75 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SND_SOC_BIAS_PREPARE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %88 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %89 = call i32 @snd_soc_dapm_set_bias_level(%struct.snd_soc_dapm_context* %87, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @dev_err(i64 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %86
  br label %99

99:                                               ; preds = %98, %80, %74
  ret void
}

declare dso_local i32 @snd_soc_dapm_set_bias_level(%struct.snd_soc_dapm_context*, i64) #1

declare dso_local i32 @dev_err(i64, i8*, i32) #1

declare dso_local i32 @pm_runtime_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
