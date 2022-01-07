; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_hw_constraint_channels_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_hw_constraint_channels_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i64, i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@__const.snd_sb8_hw_constraint_channels_rate.t = private unnamed_addr constant %struct.snd_interval { i64 1, i64 1 }, align 8
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_sb8_hw_constraint_channels_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_hw_constraint_channels_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %8 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %9 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %10 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %8, i32 %9)
  store %struct.snd_interval* %10, %struct.snd_interval** %6, align 8
  %11 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %12 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @SB8_RATE(i32 22050)
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %18 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @SB8_RATE(i32 11025)
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16, %2
  %23 = bitcast %struct.snd_interval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.snd_interval* @__const.snd_sb8_hw_constraint_channels_rate.t to i8*), i64 16, i1 false)
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %25 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %26 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %24, i32 %25)
  %27 = call i32 @snd_interval_refine(%struct.snd_interval* %26, %struct.snd_interval* %7)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i64 @SB8_RATE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
