; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pcxhr_stream* }
%struct.pcxhr_stream = type { i32*, i32 }
%struct.snd_pcxhr = type { i32, %struct.TYPE_4__*, %struct.pcxhr_mgr* }
%struct.TYPE_4__ = type { i32 }
%struct.pcxhr_mgr = type { i64, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"pcxhr_close chip%d subs%d\0A\00", align 1
@PCXHR_STREAM_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcxhr_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcxhr*, align 8
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca %struct.pcxhr_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_pcxhr* %7, %struct.snd_pcxhr** %3, align 8
  %8 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %8, i32 0, i32 2
  %10 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %9, align 8
  store %struct.pcxhr_mgr* %10, %struct.pcxhr_mgr** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %14, align 8
  store %struct.pcxhr_stream* %15, %struct.pcxhr_stream** %5, align 8
  %16 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %17 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %32 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %38 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %40 = call i32 @pcxhr_hardware_timer(%struct.pcxhr_mgr* %39, i32 0)
  br label %41

41:                                               ; preds = %36, %1
  %42 = load i32, i32* @PCXHR_STREAM_STATUS_FREE, align 4
  %43 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %44 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %46 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %48 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  ret i32 0
}

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @pcxhr_hardware_timer(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
