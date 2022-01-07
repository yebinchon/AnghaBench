; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_runtime = type { i32, %struct.ct_atc_pcm*, %struct.TYPE_5__ }
%struct.ct_atc_pcm = type { i32, i32, %struct.snd_pcm_substream* }
%struct.ct_atc = type { i32, i32 (%struct.ct_atc*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ct_atc_pcm_interrupt = common dso_local global i32 0, align 4
@IEC958 = common dso_local global i64 0, align 8
@ct_spdif_passthru_playback_hw = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ct_pcm_playback_hw = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@FRONT = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ct_atc_pcm_free_substream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @ct_pcm_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.ct_atc_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.ct_atc* %9, %struct.ct_atc** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ct_atc_pcm* @kzalloc(i32 16, i32 %13)
  store %struct.ct_atc_pcm* %14, %struct.ct_atc_pcm** %6, align 8
  %15 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %16 = icmp ne %struct.ct_atc_pcm* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %22, i32 0, i32 2
  store %struct.snd_pcm_substream* %21, %struct.snd_pcm_substream** %23, align 8
  %24 = load i32, i32* @ct_atc_pcm_interrupt, align 4
  %25 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* @IEC958, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 2
  %37 = bitcast %struct.TYPE_5__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 bitcast (%struct.TYPE_5__* @ct_spdif_passthru_playback_hw to i8*), i64 4, i1 false)
  %38 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 1
  %40 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %39, align 8
  %41 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %42 = call i32 %40(%struct.ct_atc* %41, i32 1)
  br label %59

43:                                               ; preds = %20
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = bitcast %struct.TYPE_5__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 bitcast (%struct.TYPE_5__* @ct_pcm_playback_hw to i8*), i64 4, i1 false)
  %47 = load i64, i64* @FRONT, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 8, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %43
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %61 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %62 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %96

66:                                               ; preds = %59
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %69 = load i32, i32* @UINT_MAX, align 4
  %70 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %67, i32 %68, i32 1024, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %96

74:                                               ; preds = %66
  %75 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %76 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %79 = call i32 @ct_timer_instance_new(i32 %77, %struct.ct_atc_pcm* %78)
  %80 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %81 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %83 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %96

89:                                               ; preds = %74
  %90 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %91, i32 0, i32 1
  store %struct.ct_atc_pcm* %90, %struct.ct_atc_pcm** %92, align 8
  %93 = load i32, i32* @ct_atc_pcm_free_substream, align 4
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %2, align 4
  br label %100

96:                                               ; preds = %86, %73, %65
  %97 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %98 = call i32 @kfree(%struct.ct_atc_pcm* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %89, %17
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ct_atc_pcm* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @ct_timer_instance_new(i32, %struct.ct_atc_pcm*) #1

declare dso_local i32 @kfree(%struct.ct_atc_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
