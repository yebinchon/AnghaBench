; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_init_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_init_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { %struct.amdtp_stream*, %struct.amdtp_stream* }
%struct.amdtp_stream = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.TYPE_2__* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware }
%struct.snd_pcm_hardware = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@AM824_IN_PCM_FORMAT_BITS = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AM824_OUT_PCM_FORMAT_BITS = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@dice_rate_constraint = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@dice_channels_constraint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, %struct.snd_pcm_substream*)* @init_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hw_info(%struct.snd_dice* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_pcm_hardware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdtp_stream*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  store %struct.snd_pcm_hardware* %16, %struct.snd_pcm_hardware** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load i32, i32* @AM824_IN_PCM_FORMAT_BITS, align 4
  %29 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %7, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @AMDTP_IN_STREAM, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %33 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %32, i32 0, i32 1
  %34 = load %struct.amdtp_stream*, %struct.amdtp_stream** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %34, i64 %36
  store %struct.amdtp_stream* %37, %struct.amdtp_stream** %10, align 8
  br label %49

38:                                               ; preds = %2
  %39 = load i32, i32* @AM824_OUT_PCM_FORMAT_BITS, align 4
  %40 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %44 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %43, i32 0, i32 0
  %45 = load %struct.amdtp_stream*, %struct.amdtp_stream** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %45, i64 %47
  store %struct.amdtp_stream* %48, %struct.amdtp_stream** %10, align 8
  br label %49

49:                                               ; preds = %38, %27
  %50 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 1
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @limit_channels_and_rates(%struct.snd_dice* %50, %struct.snd_pcm_runtime* %53, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %87

61:                                               ; preds = %49
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %63 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %64 = load i32, i32* @dice_rate_constraint, align 4
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %66 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %67 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %62, i32 0, i32 %63, i32 %64, %struct.snd_pcm_substream* %65, i32 %66, i32 -1)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %87

72:                                               ; preds = %61
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %74 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %75 = load i32, i32* @dice_channels_constraint, align 4
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %77 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %78 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %73, i32 0, i32 %74, i32 %75, %struct.snd_pcm_substream* %76, i32 %77, i32 -1)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %72
  %84 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %86 = call i32 @amdtp_am824_add_pcm_hw_constraints(%struct.amdtp_stream* %84, %struct.snd_pcm_runtime* %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %81, %70, %59
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @limit_channels_and_rates(%struct.snd_dice*, %struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @amdtp_am824_add_pcm_hw_constraints(%struct.amdtp_stream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
