; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_hardware_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_hardware_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { i64 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"releasing pipe\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"releasing pipe failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, %struct.snd_pcm_substream*)* @lx_hardware_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_hardware_close(%struct.lx6464es* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lx6464es*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %15 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lx_pipe_release(%struct.lx6464es* %20, i32 0, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %27 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lx_pipe_release(%struct.lx6464es*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
