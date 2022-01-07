; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_dice_channels_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_dice_channels_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__*, %struct.snd_dice* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_dice = type { i32**, i32** }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_dice_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @dice_channels_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dice_channels_constraint(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_dice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval*, align 8
  %10 = alloca %struct.snd_interval, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %15 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %5, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 2
  %20 = load %struct.snd_dice*, %struct.snd_dice** %19, align 8
  store %struct.snd_dice* %20, %struct.snd_dice** %6, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %28 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %26, i32 %27)
  store %struct.snd_interval* %28, %struct.snd_interval** %8, align 8
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %31 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %29, i32 %30)
  store %struct.snd_interval* %31, %struct.snd_interval** %9, align 8
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 2
  %35 = load i32, i32* @UINT_MAX, align 4
  store i32 %35, i32* %34, align 4
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %43 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %11, align 8
  br label %57

49:                                               ; preds = %2
  %50 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %51 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %11, align 8
  br label %57

57:                                               ; preds = %49, %41
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %99, %57
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** @snd_dice_rates, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %58
  %64 = load i32*, i32** @snd_dice_rates, align 8
  %65 = load i32, i32* %13, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @snd_dice_stream_get_rate_mode(%struct.snd_dice* %69, i32 %70, i32* %12)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %99

74:                                               ; preds = %63
  %75 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @snd_interval_test(%struct.snd_interval* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %99

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @min(i32 %82, i32 %87)
  %89 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @max(i32 %91, i32 %96)
  %98 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %80, %79, %73
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %58

102:                                              ; preds = %58
  %103 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %104 = call i32 @snd_interval_refine(%struct.snd_interval* %103, %struct.snd_interval* %10)
  ret i32 %104
}

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @snd_dice_stream_get_rate_mode(%struct.snd_dice*, i32, i32*) #1

declare dso_local i32 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
