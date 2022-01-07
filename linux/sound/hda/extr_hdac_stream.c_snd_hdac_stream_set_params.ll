; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_stream = type { i32, i32, i32, i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_stream_set_params(%struct.hdac_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  store %struct.hdac_stream* %0, %struct.hdac_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %12 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %11, i32 0, i32 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %8, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %15 = icmp ne %struct.snd_pcm_substream* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %9, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %24 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %26 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %29 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %35 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %41 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %49 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %44, %38, %32, %19
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %55 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %58 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %61 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %66 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %68 = call i32 @snd_hdac_stream_setup_periods(%struct.hdac_stream* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %52
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %44
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_hdac_stream_setup_periods(%struct.hdac_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
