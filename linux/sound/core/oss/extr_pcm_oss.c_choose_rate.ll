; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_choose_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_choose_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32)* @choose_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_rate(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_pcm_hw_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.snd_pcm_hw_params* @kmalloc(i32 4, i32 %13)
  store %struct.snd_pcm_hw_params* %14, %struct.snd_pcm_hw_params** %9, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %16 = icmp eq %struct.snd_pcm_hw_params* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %100

20:                                               ; preds = %3
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = bitcast %struct.snd_pcm_hw_params* %21 to i8*
  %24 = bitcast %struct.snd_pcm_hw_params* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %27 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %25, i32 %26)
  store %struct.snd_interval* %27, %struct.snd_interval** %8, align 8
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %91, %20
  %30 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %31 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %37 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %43 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %29
  br label %92

47:                                               ; preds = %41, %35
  %48 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %49 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %55 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %61 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %59, %47
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %66 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %67 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @snd_pcm_hw_param_set(%struct.snd_pcm_substream* %65, %struct.snd_pcm_hw_params* %66, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %75 = call i32 @kfree(%struct.snd_pcm_hw_params* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %100

77:                                               ; preds = %64
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %79 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %80 = bitcast %struct.snd_pcm_hw_params* %78 to i8*
  %81 = bitcast %struct.snd_pcm_hw_params* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  br label %82

82:                                               ; preds = %77, %59, %53
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %92

91:                                               ; preds = %82
  br label %29

92:                                               ; preds = %90, %46
  %93 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %94 = call i32 @kfree(%struct.snd_pcm_hw_params* %93)
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %96 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %97 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @snd_pcm_hw_param_near(%struct.snd_pcm_substream* %95, %struct.snd_pcm_hw_params* %96, i32 %97, i32 %98, i32* null)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %92, %73, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.snd_pcm_hw_params* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_pcm_hw_param_set(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_hw_param_near(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
