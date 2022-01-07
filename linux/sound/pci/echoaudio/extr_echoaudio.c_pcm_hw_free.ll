; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.echoaudio = type { i32, i32**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.audiopipe = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"pcm_hw_free(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca %struct.audiopipe*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.echoaudio* %6, %struct.echoaudio** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.audiopipe*
  store %struct.audiopipe* %12, %struct.audiopipe** %4, align 8
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %17 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %27 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %31 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %32 = call i32 @free_pipes(%struct.echoaudio* %30, %struct.audiopipe* %31)
  %33 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %37 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  store i32* null, i32** %39, align 8
  %40 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %41 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %40, i32 0, i32 0
  store i64 -1, i64* %41, align 8
  br label %42

42:                                               ; preds = %20, %1
  %43 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %47 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %46)
  ret i32 0
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @free_pipes(%struct.echoaudio*, %struct.audiopipe*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
