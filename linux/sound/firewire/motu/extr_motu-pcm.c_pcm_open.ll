; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, %struct.snd_motu* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_motu = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_motu_protocol* }
%struct.snd_motu_protocol = type { i32 (%struct.snd_motu*, i32*)*, i32 (%struct.snd_motu*, i32*)* }

@SND_MOTU_CLOCK_SOURCE_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca %struct.snd_motu_protocol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_motu*, %struct.snd_motu** %10, align 8
  store %struct.snd_motu* %11, %struct.snd_motu** %4, align 8
  %12 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %13 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.snd_motu_protocol*, %struct.snd_motu_protocol** %15, align 8
  store %struct.snd_motu_protocol* %16, %struct.snd_motu_protocol** %5, align 8
  %17 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %18 = call i32 @snd_motu_stream_lock_try(%struct.snd_motu* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %98

23:                                               ; preds = %1
  %24 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %25 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %28 = call i32 @snd_motu_stream_cache_packet_formats(%struct.snd_motu* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %91

32:                                               ; preds = %23
  %33 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = call i32 @init_hw_info(%struct.snd_motu* %33, %struct.snd_pcm_substream* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %91

39:                                               ; preds = %32
  %40 = load %struct.snd_motu_protocol*, %struct.snd_motu_protocol** %5, align 8
  %41 = getelementptr inbounds %struct.snd_motu_protocol, %struct.snd_motu_protocol* %40, i32 0, i32 0
  %42 = load i32 (%struct.snd_motu*, i32*)*, i32 (%struct.snd_motu*, i32*)** %41, align 8
  %43 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %44 = call i32 %42(%struct.snd_motu* %43, i32* %6)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %91

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SND_MOTU_CLOCK_SOURCE_INTERNAL, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %54 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %53, i32 0, i32 2
  %55 = call i64 @amdtp_stream_pcm_running(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %59 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %58, i32 0, i32 1
  %60 = call i64 @amdtp_stream_pcm_running(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %57, %52, %48
  %63 = load %struct.snd_motu_protocol*, %struct.snd_motu_protocol** %5, align 8
  %64 = getelementptr inbounds %struct.snd_motu_protocol, %struct.snd_motu_protocol* %63, i32 0, i32 1
  %65 = load i32 (%struct.snd_motu*, i32*)*, i32 (%struct.snd_motu*, i32*)** %64, align 8
  %66 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %67 = call i32 %65(%struct.snd_motu* %66, i32* %7)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %91

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %57
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %86 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %85)
  %87 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %88 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %98

91:                                               ; preds = %70, %47, %38, %31
  %92 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %93 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %96 = call i32 @snd_motu_stream_lock_release(%struct.snd_motu* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %91, %84, %21
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @snd_motu_stream_lock_try(%struct.snd_motu*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_motu_stream_cache_packet_formats(%struct.snd_motu*) #1

declare dso_local i32 @init_hw_info(%struct.snd_motu*, %struct.snd_pcm_substream*) #1

declare dso_local i64 @amdtp_stream_pcm_running(i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_motu_stream_lock_release(%struct.snd_motu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
