; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_apply_constraint_to_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_apply_constraint_to_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32 }
%struct.snd_interval = type { i32, i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@CIP_SFC_COUNT = common dso_local global i32 0, align 4
@amdtp_rate_table = common dso_local global i32* null, align 8
@amdtp_syt_intervals = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @apply_constraint_to_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_constraint_to_size(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %11 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %10, i32 %13)
  store %struct.snd_interval* %14, %struct.snd_interval** %5, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %17 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %15, i32 %16)
  store %struct.snd_interval* %17, %struct.snd_interval** %6, align 8
  %18 = bitcast %struct.snd_interval* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CIP_SFC_COUNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %25 = load i32*, i32** @amdtp_rate_table, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @snd_interval_test(%struct.snd_interval* %24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** @amdtp_syt_intervals, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @max(i32 %33, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %32, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @roundup(i32 %47, i32 %48)
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %52 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @rounddown(i32 %53, i32 %54)
  %56 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %59 = call i32 @snd_interval_refine(%struct.snd_interval* %58, %struct.snd_interval* %7)
  ret i32 %59
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
