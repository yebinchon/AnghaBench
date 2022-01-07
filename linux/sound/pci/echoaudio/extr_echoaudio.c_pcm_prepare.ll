; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i64 }
%struct.echoaudio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.audioformat = type { i32, i32, i64, i32 }
%struct.audiopipe = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Prepare rate=%d format=%d channels=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Prepare error: unsupported format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.audioformat, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.echoaudio* %9, %struct.echoaudio** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.audiopipe*
  %17 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %53 [
    i32 128, label %43
    i32 132, label %45
    i32 131, label %47
    i32 130, label %49
    i32 129, label %51
  ]

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 8, i32* %44, align 4
  br label %65

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 16, i32* %46, align 4
  br label %65

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 24, i32* %48, align 4
  br label %65

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %1, %49
  %52 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 32, i32* %52, align 4
  br label %65

53:                                               ; preds = %1
  %54 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %92

65:                                               ; preds = %51, %47, %45, %43
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %68 = call i32 @px_num(%struct.echoaudio* %67)
  %69 = icmp sge i32 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @snd_BUG_ON(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %92

76:                                               ; preds = %65
  %77 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @is_pipe_allocated(%struct.echoaudio* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @snd_BUG_ON(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %92

88:                                               ; preds = %76
  %89 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @set_audio_format(%struct.echoaudio* %89, i32 %90, %struct.audioformat* %6)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %85, %73, %53
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @px_num(%struct.echoaudio*) #1

declare dso_local i32 @is_pipe_allocated(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_audio_format(%struct.echoaudio*, i32, %struct.audioformat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
