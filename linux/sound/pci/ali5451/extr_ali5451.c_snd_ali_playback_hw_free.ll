; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { %struct.snd_ali_voice* }
%struct.snd_ali = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ali_playback_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_playback_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ali_voice*, align 8
  %6 = alloca %struct.snd_ali_voice*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_ali* %8, %struct.snd_ali** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %13, align 8
  store %struct.snd_ali_voice* %14, %struct.snd_ali_voice** %5, align 8
  %15 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %16 = icmp ne %struct.snd_ali_voice* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %18, i32 0, i32 0
  %20 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %19, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi %struct.snd_ali_voice* [ %20, %17 ], [ null, %21 ]
  store %struct.snd_ali_voice* %23, %struct.snd_ali_voice** %6, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %24)
  %26 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %27 = icmp ne %struct.snd_ali_voice* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %30 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %31 = call i32 @snd_ali_free_voice(%struct.snd_ali* %29, %struct.snd_ali_voice* %30)
  %32 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %32, i32 0, i32 0
  store %struct.snd_ali_voice* null, %struct.snd_ali_voice** %33, align 8
  br label %34

34:                                               ; preds = %28, %22
  ret i32 0
}

declare dso_local %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ali_free_voice(%struct.snd_ali*, %struct.snd_ali_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
