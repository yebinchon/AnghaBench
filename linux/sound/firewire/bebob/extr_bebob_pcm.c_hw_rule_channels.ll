; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_pcm.c_hw_rule_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_pcm.c_hw_rule_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.snd_bebob_stream_formation* }
%struct.snd_bebob_stream_formation = type { i64 }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@SND_BEBOB_STRM_FMT_ENTRIES = common dso_local global i32 0, align 4
@snd_bebob_rate_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @hw_rule_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_rule_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_bebob_stream_formation*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %10 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %10, i32 0, i32 0
  %12 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %11, align 8
  store %struct.snd_bebob_stream_formation* %12, %struct.snd_bebob_stream_formation** %5, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %15 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %13, i32 %14)
  store %struct.snd_interval* %15, %struct.snd_interval** %6, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %17 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %18 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %16, i32 %17)
  store %struct.snd_interval* %18, %struct.snd_interval** %7, align 8
  %19 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  %22 = load i32, i32* @UINT_MAX, align 4
  store i32 %22, i32* %21, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %67, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SND_BEBOB_STRM_FMT_ENTRIES, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %28, i64 %30
  %32 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %67

36:                                               ; preds = %27
  %37 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %38 = load i32*, i32** @snd_bebob_rate_table, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_interval_test(%struct.snd_interval* %37, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %67

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %49, i64 %51
  %53 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @min(i32 %48, i64 %54)
  %56 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %59, i64 %61
  %63 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @max(i32 %58, i64 %64)
  %66 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %46, %45, %35
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %23

70:                                               ; preds = %23
  %71 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %72 = call i32 @snd_interval_refine(%struct.snd_interval* %71, %struct.snd_interval* %8)
  ret i32 %72
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
