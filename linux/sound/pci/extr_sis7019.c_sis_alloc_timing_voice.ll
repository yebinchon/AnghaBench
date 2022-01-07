; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_alloc_timing_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_alloc_timing_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.voice* }
%struct.voice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.sis7019 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @sis_alloc_timing_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_alloc_timing_voice(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.sis7019*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.voice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call %struct.sis7019* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.sis7019* %14, %struct.sis7019** %6, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %7, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.voice*, %struct.voice** %19, align 8
  store %struct.voice* %20, %struct.voice** %8, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = call i32 @params_buffer_size(%struct.snd_pcm_hw_params* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = udiv i32 %30, 2
  %32 = icmp ne i32 %29, %31
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i1 [ false, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %33
  %39 = load %struct.voice*, %struct.voice** %8, align 8
  %40 = getelementptr inbounds %struct.voice, %struct.voice* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %38
  %44 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %45 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %44, i32 0, i32 0
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %49 = call %struct.TYPE_2__* @__sis_alloc_playback_voice(%struct.sis7019* %48)
  %50 = load %struct.voice*, %struct.voice** %8, align 8
  %51 = getelementptr inbounds %struct.voice, %struct.voice* %50, i32 0, i32 0
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %51, align 8
  %52 = load %struct.voice*, %struct.voice** %8, align 8
  %53 = getelementptr inbounds %struct.voice, %struct.voice* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %58 = call i32 @__sis_map_silence(%struct.sis7019* %57)
  br label %59

59:                                               ; preds = %56, %43
  %60 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %61 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %60, i32 0, i32 0
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.voice*, %struct.voice** %8, align 8
  %65 = getelementptr inbounds %struct.voice, %struct.voice* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %93

71:                                               ; preds = %59
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %73 = load %struct.voice*, %struct.voice** %8, align 8
  %74 = getelementptr inbounds %struct.voice, %struct.voice* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store %struct.snd_pcm_substream* %72, %struct.snd_pcm_substream** %76, align 8
  br label %92

77:                                               ; preds = %38, %33
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %77
  %81 = load %struct.voice*, %struct.voice** %8, align 8
  %82 = getelementptr inbounds %struct.voice, %struct.voice* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %87 = load %struct.voice*, %struct.voice** %8, align 8
  %88 = call i32 @sis_free_voice(%struct.sis7019* %86, %struct.voice* %87)
  %89 = load %struct.voice*, %struct.voice** %8, align 8
  %90 = getelementptr inbounds %struct.voice, %struct.voice* %89, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %90, align 8
  br label %91

91:                                               ; preds = %85, %80, %77
  br label %92

92:                                               ; preds = %91, %71
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %68
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.sis7019* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_buffer_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @__sis_alloc_playback_voice(%struct.sis7019*) #1

declare dso_local i32 @__sis_map_silence(%struct.sis7019*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sis_free_voice(%struct.sis7019*, %struct.voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
