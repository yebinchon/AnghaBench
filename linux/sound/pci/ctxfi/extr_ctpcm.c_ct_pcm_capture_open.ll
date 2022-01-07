; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.ct_atc_pcm*, %struct.TYPE_2__ }
%struct.ct_atc_pcm = type { i32, i32, %struct.snd_pcm_substream*, i64 }
%struct.ct_atc = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ct_atc_pcm_interrupt = common dso_local global i32 0, align 4
@ct_pcm_capture_hw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ct_atc_pcm_free_substream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @ct_pcm_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_capture_open(%struct.snd_pcm_substream* %0) #0 {
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
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ct_atc_pcm* @kzalloc(i32 24, i32 %13)
  store %struct.ct_atc_pcm* %14, %struct.ct_atc_pcm** %6, align 8
  %15 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %16 = icmp ne %struct.ct_atc_pcm* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %82

20:                                               ; preds = %1
  %21 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %24, i32 0, i32 2
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %25, align 8
  %26 = load i32, i32* @ct_atc_pcm_interrupt, align 4
  %27 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 2
  %31 = bitcast %struct.TYPE_2__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 4 bitcast (%struct.TYPE_2__* @ct_pcm_capture_hw to i8*), i64 4, i1 false)
  %32 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %33 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %36 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %44 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %20
  br label %78

48:                                               ; preds = %20
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %51 = load i32, i32* @UINT_MAX, align 4
  %52 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %49, i32 %50, i32 1024, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %78

56:                                               ; preds = %48
  %57 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %58 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %61 = call i32 @ct_timer_instance_new(i32 %59, %struct.ct_atc_pcm* %60)
  %62 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %63 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %65 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %78

71:                                               ; preds = %56
  %72 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 1
  store %struct.ct_atc_pcm* %72, %struct.ct_atc_pcm** %74, align 8
  %75 = load i32, i32* @ct_atc_pcm_free_substream, align 4
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %82

78:                                               ; preds = %68, %55, %47
  %79 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %80 = call i32 @kfree(%struct.ct_atc_pcm* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %71, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
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
