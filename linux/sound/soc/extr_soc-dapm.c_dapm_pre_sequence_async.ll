; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_pre_sequence_async.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_pre_sequence_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i64, i64, i64 }

@SND_SOC_BIAS_OFF = common dso_local global i64 0, align 8
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ASoC: Failed to turn on bias: %d\0A\00", align 1
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@SND_SOC_BIAS_PREPARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ASoC: Failed to prepare bias: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dapm_pre_sequence_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_pre_sequence_async(i8* %0, i32 %1) #0 {
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
  %12 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pm_runtime_get_sync(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %32 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %33 = call i32 @snd_soc_dapm_set_bias_level(%struct.snd_soc_dapm_context* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_err(i64 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %14, %2
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61, %49
  %68 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %69 = load i32, i32* @SND_SOC_BIAS_PREPARE, align 4
  %70 = call i32 @snd_soc_dapm_set_bias_level(%struct.snd_soc_dapm_context* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @dev_err(i64 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %61, %55
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i64) #1

declare dso_local i32 @snd_soc_dapm_set_bias_level(%struct.snd_soc_dapm_context*, i32) #1

declare dso_local i32 @dev_err(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
