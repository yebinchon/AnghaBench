; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_constrain_interval_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_constrain_interval_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_hw_constraints }
%struct.snd_pcm_hw_constraints = type { i32 }
%struct.snd_pcm_hw_params = type { i32, i32 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_HW_PARAM_FIRST_INTERVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_LAST_INTERVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @constrain_interval_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constrain_interval_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_hw_constraints*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_interval, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.snd_pcm_hw_constraints* %14, %struct.snd_pcm_hw_constraints** %6, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_FIRST_INTERVAL, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %71, %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_INTERVAL, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %21, i32 %22)
  store %struct.snd_interval* %23, %struct.snd_interval** %7, align 8
  %24 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %25 = call i64 @snd_interval_empty(%struct.snd_interval* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %75

30:                                               ; preds = %20
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %71

39:                                               ; preds = %30
  %40 = call i64 (...) @trace_hw_interval_param_enabled()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %44 = bitcast %struct.snd_interval* %9 to i8*
  %45 = bitcast %struct.snd_interval* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %48 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %48, i32 %49)
  %51 = call i32 @snd_interval_refine(%struct.snd_interval* %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %75

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %71

60:                                               ; preds = %56
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %64 = call i32 @trace_hw_interval_param(%struct.snd_pcm_substream* %61, i32 %62, i32 0, %struct.snd_interval* %9, %struct.snd_interval* %63)
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %60, %59, %38
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %16

74:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %54, %27
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i64 @snd_interval_empty(%struct.snd_interval*) #1

declare dso_local i64 @trace_hw_interval_param_enabled(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, i32) #1

declare dso_local i32 @constrs_interval(%struct.snd_pcm_hw_constraints*, i32) #1

declare dso_local i32 @trace_hw_interval_param(%struct.snd_pcm_substream*, i32, i32, %struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
