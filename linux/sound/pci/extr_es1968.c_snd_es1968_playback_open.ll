; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__, %struct.esschan* }
%struct.esschan = type { i32*, i32, i32, %struct.snd_pcm_substream*, i64, i64* }
%struct.es1968 = type { i32, i32 }

@ESM_APU_PCM_PLAY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESM_MODE_PLAY = common dso_local global i32 0, align 4
@snd_es1968_playback = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1968_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.esschan*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.es1968* %9, %struct.es1968** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.es1968*, %struct.es1968** %4, align 8
  %14 = load i32, i32* @ESM_APU_PCM_PLAY, align 4
  %15 = call i32 @snd_es1968_alloc_apu_pair(%struct.es1968* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.esschan* @kzalloc(i32 40, i32 %21)
  store %struct.esschan* %22, %struct.esschan** %6, align 8
  %23 = load %struct.esschan*, %struct.esschan** %6, align 8
  %24 = icmp ne %struct.esschan* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.es1968*, %struct.es1968** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %26, i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.esschan*, %struct.esschan** %6, align 8
  %34 = getelementptr inbounds %struct.esschan, %struct.esschan* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.esschan*, %struct.esschan** %6, align 8
  %40 = getelementptr inbounds %struct.esschan, %struct.esschan* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.esschan*, %struct.esschan** %6, align 8
  %44 = getelementptr inbounds %struct.esschan, %struct.esschan* %43, i32 0, i32 5
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.esschan*, %struct.esschan** %6, align 8
  %48 = getelementptr inbounds %struct.esschan, %struct.esschan* %47, i32 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.esschan*, %struct.esschan** %6, align 8
  %52 = getelementptr inbounds %struct.esschan, %struct.esschan* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %54 = load %struct.esschan*, %struct.esschan** %6, align 8
  %55 = getelementptr inbounds %struct.esschan, %struct.esschan* %54, i32 0, i32 3
  store %struct.snd_pcm_substream* %53, %struct.snd_pcm_substream** %55, align 8
  %56 = load i32, i32* @ESM_MODE_PLAY, align 4
  %57 = load %struct.esschan*, %struct.esschan** %6, align 8
  %58 = getelementptr inbounds %struct.esschan, %struct.esschan* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.esschan*, %struct.esschan** %6, align 8
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 1
  store %struct.esschan* %59, %struct.esschan** %61, align 8
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 0
  %64 = bitcast %struct.TYPE_2__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 4 bitcast (%struct.TYPE_2__* @snd_es1968_playback to i8*), i64 8, i1 false)
  %65 = load %struct.es1968*, %struct.es1968** %4, align 8
  %66 = call i32 @calc_available_memory_size(%struct.es1968* %65)
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %66, i32* %72, align 4
  %73 = load %struct.es1968*, %struct.es1968** %4, align 8
  %74 = getelementptr inbounds %struct.es1968, %struct.es1968* %73, i32 0, i32 0
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load %struct.esschan*, %struct.esschan** %6, align 8
  %77 = getelementptr inbounds %struct.esschan, %struct.esschan* %76, i32 0, i32 1
  %78 = load %struct.es1968*, %struct.es1968** %4, align 8
  %79 = getelementptr inbounds %struct.es1968, %struct.es1968* %78, i32 0, i32 1
  %80 = call i32 @list_add(i32* %77, i32* %79)
  %81 = load %struct.es1968*, %struct.es1968** %4, align 8
  %82 = getelementptr inbounds %struct.es1968, %struct.es1968* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %31, %25, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es1968_alloc_apu_pair(%struct.es1968*, i32) #1

declare dso_local %struct.esschan* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_es1968_free_apu_pair(%struct.es1968*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @calc_available_memory_size(%struct.es1968*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
