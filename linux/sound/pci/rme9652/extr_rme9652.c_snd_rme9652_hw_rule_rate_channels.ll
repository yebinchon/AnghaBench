; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_hw_rule_rate_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_hw_rule_rate_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i64, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.snd_rme9652* }
%struct.snd_rme9652 = type { i64, i64 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@__const.snd_rme9652_hw_rule_rate_channels.t = private unnamed_addr constant %struct.snd_interval { i64 44100, i32 48000, i32 1 }, align 8
@__const.snd_rme9652_hw_rule_rate_channels.t.1 = private unnamed_addr constant %struct.snd_interval { i64 88200, i32 96000, i32 1 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_rme9652_hw_rule_rate_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_hw_rule_rate_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval, align 8
  %10 = alloca %struct.snd_interval, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %11 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %11, i32 0, i32 0
  %13 = load %struct.snd_rme9652*, %struct.snd_rme9652** %12, align 8
  store %struct.snd_rme9652* %13, %struct.snd_rme9652** %6, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %16 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %7, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %19 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %17, i32 %18)
  store %struct.snd_interval* %19, %struct.snd_interval** %8, align 8
  %20 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %24 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = bitcast %struct.snd_interval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.snd_interval* @__const.snd_rme9652_hw_rule_rate_channels.t to i8*), i64 16, i1 false)
  %29 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %30 = call i32 @snd_interval_refine(%struct.snd_interval* %29, %struct.snd_interval* %9)
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %2
  %32 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %33 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %37 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = bitcast %struct.snd_interval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 bitcast (%struct.snd_interval* @__const.snd_rme9652_hw_rule_rate_channels.t.1 to i8*), i64 16, i1 false)
  %42 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %43 = call i32 @snd_interval_refine(%struct.snd_interval* %42, %struct.snd_interval* %10)
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %40, %27
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

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
