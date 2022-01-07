; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_7__ = type { %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_8__ = type { i32, %struct.snd_pcm_substream* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"sst_platform_pcm_trigger called\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"sst: Trigger Start\0A\00", align 1
@SST_PLATFORM_RUNNING = common dso_local global i32 0, align 4
@sst = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"sst: in stop\0A\00", align 1
@SST_PLATFORM_DROPPED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"sst: in pause\0A\00", align 1
@SST_PLATFORM_PAUSED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"sst: in pause release\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @sst_platform_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_runtime_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %10, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

25:                                               ; preds = %2
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %29, align 8
  store %struct.sst_runtime_stream* %30, %struct.sst_runtime_stream** %8, align 8
  %31 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %32 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %104 [
    i32 130, label %36
    i32 129, label %56
    i32 133, label %72
    i32 128, label %72
    i32 132, label %88
    i32 131, label %88
  ]

36:                                               ; preds = %25
  %37 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %38 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @SST_PLATFORM_RUNNING, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %44 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store %struct.snd_pcm_substream* %42, %struct.snd_pcm_substream** %45, align 8
  %46 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %47 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sst, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %50(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %107

56:                                               ; preds = %25
  %57 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %58 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @SST_PLATFORM_DROPPED, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %63 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sst, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 %66(i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %107

72:                                               ; preds = %25, %25
  %73 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %74 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @SST_PLATFORM_PAUSED, align 4
  store i32 %77, i32* %9, align 4
  %78 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %79 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32 (i32, i32)*, i32 (i32, i32)** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sst, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 %82(i32 %85, i32 %86)
  store i32 %87, i32* %6, align 4
  br label %107

88:                                               ; preds = %25, %25
  %89 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %90 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @SST_PLATFORM_RUNNING, align 4
  store i32 %93, i32* %9, align 4
  %94 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %95 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i32 (i32, i32)*, i32 (i32, i32)** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sst, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 %98(i32 %101, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %107

104:                                              ; preds = %25
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %116

107:                                              ; preds = %88, %72, %56, %36
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @sst_set_stream_status(%struct.sst_runtime_stream* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %104, %24
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sst_set_stream_status(%struct.sst_runtime_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
