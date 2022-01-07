; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_rate_out_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_rate_out_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i64, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.hdspm* }
%struct.hdspm = type { i64, i64, i64 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@__const.snd_hdspm_hw_rule_rate_out_channels.t = private unnamed_addr constant %struct.snd_interval { i64 32000, i32 48000, i32 1 }, align 8
@__const.snd_hdspm_hw_rule_rate_out_channels.t.1 = private unnamed_addr constant %struct.snd_interval { i64 128000, i32 192000, i32 1 }, align 8
@__const.snd_hdspm_hw_rule_rate_out_channels.t.2 = private unnamed_addr constant %struct.snd_interval { i64 64000, i32 96000, i32 1 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hdspm_hw_rule_rate_out_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_hw_rule_rate_out_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval, align 8
  %10 = alloca %struct.snd_interval, align 8
  %11 = alloca %struct.snd_interval, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %12 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %12, i32 0, i32 0
  %14 = load %struct.hdspm*, %struct.hdspm** %13, align 8
  store %struct.hdspm* %14, %struct.hdspm** %6, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %17 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %15, i32 %16)
  store %struct.snd_interval* %17, %struct.snd_interval** %7, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %20 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %18, i32 %19)
  store %struct.snd_interval* %20, %struct.snd_interval** %8, align 8
  %21 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %25 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = bitcast %struct.snd_interval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.snd_interval* @__const.snd_hdspm_hw_rule_rate_out_channels.t to i8*), i64 16, i1 false)
  %30 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %31 = call i32 @snd_interval_refine(%struct.snd_interval* %30, %struct.snd_interval* %9)
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %2
  %33 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %34 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %38 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = bitcast %struct.snd_interval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.snd_interval* @__const.snd_hdspm_hw_rule_rate_out_channels.t.1 to i8*), i64 16, i1 false)
  %43 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %44 = call i32 @snd_interval_refine(%struct.snd_interval* %43, %struct.snd_interval* %10)
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %32
  %46 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %47 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %51 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = bitcast %struct.snd_interval* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 bitcast (%struct.snd_interval* @__const.snd_hdspm_hw_rule_rate_out_channels.t.2 to i8*), i64 16, i1 false)
  %56 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %57 = call i32 @snd_interval_refine(%struct.snd_interval* %56, %struct.snd_interval* %11)
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54, %41, %28
  %62 = load i32, i32* %3, align 4
  ret i32 %62
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
