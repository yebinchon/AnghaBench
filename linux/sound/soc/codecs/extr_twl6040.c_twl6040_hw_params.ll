; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.twl6040_data = type { i32, i32 }

@TWL6040_SYSCLK_SEL_HPPLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"HPPLL does not support rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unsupported rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @twl6040_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.twl6040_data*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.twl6040_data* %15, %struct.twl6040_data** %9, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %17 = call i32 @params_rate(%struct.snd_pcm_hw_params* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %42 [
    i32 11250, label %19
    i32 22500, label %19
    i32 44100, label %19
    i32 88200, label %19
    i32 8000, label %39
    i32 16000, label %39
    i32 32000, label %39
    i32 48000, label %39
    i32 96000, label %39
  ]

19:                                               ; preds = %3, %3, %3, %3
  %20 = load %struct.twl6040_data*, %struct.twl6040_data** %9, align 8
  %21 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TWL6040_SYSCLK_SEL_HPPLL, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @unlikely(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %19
  %37 = load %struct.twl6040_data*, %struct.twl6040_data** %9, align 8
  %38 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %37, i32 0, i32 0
  store i32 17640000, i32* %38, align 4
  br label %50

39:                                               ; preds = %3, %3, %3, %3, %3
  %40 = load %struct.twl6040_data*, %struct.twl6040_data** %9, align 8
  %41 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %40, i32 0, i32 0
  store i32 19200000, i32* %41, align 4
  br label %50

42:                                               ; preds = %3
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %39, %36
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %42, %28
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
