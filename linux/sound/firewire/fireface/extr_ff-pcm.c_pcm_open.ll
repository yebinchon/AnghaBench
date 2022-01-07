; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-pcm.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-pcm.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_9__*, %struct.snd_ff* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.snd_ff = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.snd_ff*, i32*, i32*)* }

@SND_FF_CLOCK_SRC_INTERNAL = common dso_local global i32 0, align 4
@CIP_SFC_COUNT = common dso_local global i32 0, align 4
@amdtp_rate_table = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_ff*, %struct.snd_ff** %10, align 8
  store %struct.snd_ff* %11, %struct.snd_ff** %4, align 8
  %12 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %13 = call i32 @snd_ff_stream_lock_try(%struct.snd_ff* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %118

18:                                               ; preds = %1
  %19 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = call i32 @pcm_init_hw_params(%struct.snd_ff* %19, %struct.snd_pcm_substream* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %114

25:                                               ; preds = %18
  %26 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.snd_ff*, i32*, i32*)*, i32 (%struct.snd_ff*, i32*, i32*)** %31, align 8
  %33 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %34 = call i32 %32(%struct.snd_ff* %33, i32* %5, i32* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %114

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SND_FF_CLOCK_SRC_INTERNAL, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @CIP_SFC_COUNT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32*, i32** @amdtp_rate_table, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %43

60:                                               ; preds = %55, %43
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CIP_SFC_COUNT, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %114

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  br label %111

80:                                               ; preds = %38
  %81 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %81, i32 0, i32 0
  %83 = call i64 @amdtp_stream_pcm_running(%struct.TYPE_10__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %87 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %86, i32 0, i32 1
  %88 = call i64 @amdtp_stream_pcm_running(%struct.TYPE_10__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %85, %80
  %91 = load i32*, i32** @amdtp_rate_table, align 8
  %92 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %93 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  br label %110

110:                                              ; preds = %90, %85
  br label %111

111:                                              ; preds = %110, %67
  %112 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %113 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %112)
  store i32 0, i32* %2, align 4
  br label %118

114:                                              ; preds = %64, %37, %24
  %115 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %116 = call i32 @snd_ff_stream_lock_release(%struct.snd_ff* %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %111, %16
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @snd_ff_stream_lock_try(%struct.snd_ff*) #1

declare dso_local i32 @pcm_init_hw_params(%struct.snd_ff*, %struct.snd_pcm_substream*) #1

declare dso_local i64 @amdtp_stream_pcm_running(%struct.TYPE_10__*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ff_stream_lock_release(%struct.snd_ff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
