; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.lx6464es = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i64*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"->lx_pcm_hw_free\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to stop hardware. Error code %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to close hardware. Error code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lx_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.lx6464es* %7, %struct.lx6464es** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %15 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %21 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %1
  %32 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = call i32 @lx_hardware_stop(%struct.lx6464es* %32, %struct.snd_pcm_substream* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %39 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %80

45:                                               ; preds = %31
  %46 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = call i32 @lx_hardware_close(%struct.lx6464es* %46, %struct.snd_pcm_substream* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %53 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %80

59:                                               ; preds = %45
  %60 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %61 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %1
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %68 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %73 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %77 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %51, %37
  %81 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %82 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_hardware_stop(%struct.lx6464es*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lx_hardware_close(%struct.lx6464es*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
