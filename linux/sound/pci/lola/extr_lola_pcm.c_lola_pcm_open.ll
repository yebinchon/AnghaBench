; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.lola = type { i32, i32, i32, i64, i64, i64 }
%struct.lola_pcm = type { i64 }
%struct.lola_stream = type { i32, i64, i32*, %struct.snd_pcm_substream* }

@EBUSY = common dso_local global i32 0, align 4
@lola_pcm_hw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lola_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.lola*, align 8
  %5 = alloca %struct.lola_pcm*, align 8
  %6 = alloca %struct.lola_stream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.lola* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.lola* %9, %struct.lola** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.lola_pcm* @lola_get_pcm(%struct.snd_pcm_substream* %10)
  store %struct.lola_pcm* %11, %struct.lola_pcm** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = call %struct.lola_stream* @lola_get_stream(%struct.snd_pcm_substream* %12)
  store %struct.lola_stream* %13, %struct.lola_stream** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %7, align 8
  %17 = load %struct.lola*, %struct.lola** %4, align 8
  %18 = getelementptr inbounds %struct.lola, %struct.lola* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %21 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.lola*, %struct.lola** %4, align 8
  %26 = getelementptr inbounds %struct.lola, %struct.lola* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %104

30:                                               ; preds = %1
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %32 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %33 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %32, i32 0, i32 3
  store %struct.snd_pcm_substream* %31, %struct.snd_pcm_substream** %33, align 8
  %34 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %35 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %37 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_2__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 bitcast (%struct.TYPE_2__* @lola_pcm_hw to i8*), i64 24, i1 false)
  %41 = load %struct.lola_pcm*, %struct.lola_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.lola_pcm, %struct.lola_pcm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %45 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i64 %47, i64* %50, align 8
  %51 = load %struct.lola*, %struct.lola** %4, align 8
  %52 = getelementptr inbounds %struct.lola, %struct.lola* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %30
  %56 = load %struct.lola*, %struct.lola** %4, align 8
  %57 = getelementptr inbounds %struct.lola, %struct.lola* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load %struct.lola*, %struct.lola** %4, align 8
  %63 = getelementptr inbounds %struct.lola, %struct.lola* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %81

68:                                               ; preds = %30
  %69 = load %struct.lola*, %struct.lola** %4, align 8
  %70 = getelementptr inbounds %struct.lola, %struct.lola* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  %75 = load %struct.lola*, %struct.lola** %4, align 8
  %76 = getelementptr inbounds %struct.lola, %struct.lola* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %68, %55
  %82 = load %struct.lola*, %struct.lola** %4, align 8
  %83 = getelementptr inbounds %struct.lola, %struct.lola* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %87 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %88 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %86, i32 %87)
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %90 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %91 = load %struct.lola*, %struct.lola** %4, align 8
  %92 = getelementptr inbounds %struct.lola, %struct.lola* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %89, i32 0, i32 %90, i32 %93)
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %96 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %97 = load %struct.lola*, %struct.lola** %4, align 8
  %98 = getelementptr inbounds %struct.lola, %struct.lola* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %95, i32 0, i32 %96, i32 %99)
  %101 = load %struct.lola*, %struct.lola** %4, align 8
  %102 = getelementptr inbounds %struct.lola, %struct.lola* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %81, %24
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.lola* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.lola_pcm* @lola_get_pcm(%struct.snd_pcm_substream*) #1

declare dso_local %struct.lola_stream* @lola_get_stream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
