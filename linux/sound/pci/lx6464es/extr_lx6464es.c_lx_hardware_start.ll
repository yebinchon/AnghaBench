; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_hardware_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_hardware_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"setting stream format\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"setting stream format failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"starting pipe\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"starting pipe failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"waiting for pipe to start\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"waiting for pipe failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, %struct.snd_pcm_substream*)* @lx_hardware_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_hardware_start(%struct.lx6464es* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lx6464es*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %19 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @lx_stream_set_format(%struct.lx6464es* %24, %struct.snd_pcm_runtime* %25, i32 0, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %32 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %80

38:                                               ; preds = %2
  %39 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %40 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @lx_pipe_start(%struct.lx6464es* %45, i32 0, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %52 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %80

58:                                               ; preds = %38
  %59 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %60 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @lx_pipe_wait_for_start(%struct.lx6464es* %65, i32 0, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %72 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %58
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %70, %50, %30
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lx_stream_set_format(%struct.lx6464es*, %struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lx_pipe_start(%struct.lx6464es*, i32, i32) #1

declare dso_local i32 @lx_pipe_wait_for_start(%struct.lx6464es*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
