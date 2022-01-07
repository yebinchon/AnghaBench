; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.xen_snd_front_pcm_stream_info = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unsupported sample format: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @alsa_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.xen_snd_front_pcm_stream_info*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream* %8)
  store %struct.xen_snd_front_pcm_stream_info* %9, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %10 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %11 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %5, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @to_sndif_format(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %14
  %25 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %26 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %14
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %39 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %43 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %42, i32 0, i32 1
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %51)
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %54 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %53)
  %55 = call i32 @xen_snd_front_stream_prepare(i32* %41, i32* %43, i32 %44, i32 %47, i32 %50, i32 %52, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %36
  %61 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %62 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %1
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %58, %24
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream*) #1

declare dso_local i32 @to_sndif_format(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @xen_snd_front_stream_prepare(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
