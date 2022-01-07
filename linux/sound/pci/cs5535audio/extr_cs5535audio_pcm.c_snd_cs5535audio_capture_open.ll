; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32*, %struct.TYPE_3__ }
%struct.cs5535audio = type { %struct.TYPE_4__*, i32*, %struct.snd_pcm_substream* }
%struct.TYPE_4__ = type { i32* }

@snd_cs5535audio_capture = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@AC97_RATES_ADC = common dso_local global i64 0, align 8
@CS5535AUDIO_DMA_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs5535audio_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs5535audio_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs5535audio*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.cs5535audio* %8, %struct.cs5535audio** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 1
  %14 = bitcast %struct.TYPE_3__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 4 bitcast (%struct.TYPE_3__* @snd_cs5535audio_capture to i8*), i64 4, i1 false)
  %15 = load %struct.cs5535audio*, %struct.cs5535audio** %5, align 8
  %16 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @AC97_RATES_ADC, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %27 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %26)
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = load %struct.cs5535audio*, %struct.cs5535audio** %5, align 8
  %30 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %29, i32 0, i32 2
  store %struct.snd_pcm_substream* %28, %struct.snd_pcm_substream** %30, align 8
  %31 = load %struct.cs5535audio*, %struct.cs5535audio** %5, align 8
  %32 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @CS5535AUDIO_DMA_CAPTURE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %39 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %40 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %1
  %45 = load %struct.cs5535audio*, %struct.cs5535audio** %5, align 8
  %46 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @olpc_capture_open(%struct.TYPE_4__* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @olpc_capture_open(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
