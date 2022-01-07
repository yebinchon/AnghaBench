; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_pcm.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_pcm.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_8__*, %struct.snd_bebob* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.snd_bebob = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.snd_bebob_rate_spec* }
%struct.snd_bebob_rate_spec = type { i32 (%struct.snd_bebob*, i32*)* }

@SND_BEBOB_CLOCK_TYPE_EXTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fail to get sampling rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_bebob*, align 8
  %5 = alloca %struct.snd_bebob_rate_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_bebob*, %struct.snd_bebob** %10, align 8
  store %struct.snd_bebob* %11, %struct.snd_bebob** %4, align 8
  %12 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %13 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.snd_bebob_rate_spec*, %struct.snd_bebob_rate_spec** %15, align 8
  store %struct.snd_bebob_rate_spec* %16, %struct.snd_bebob_rate_spec** %5, align 8
  %17 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %18 = call i32 @snd_bebob_stream_lock_try(%struct.snd_bebob* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = call i32 @pcm_init_hw_params(%struct.snd_bebob* %23, %struct.snd_pcm_substream* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %82

29:                                               ; preds = %22
  %30 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %31 = call i32 @snd_bebob_stream_get_clock_src(%struct.snd_bebob* %30, i32* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %82

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_EXTERNAL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %41 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %40, i32 0, i32 2
  %42 = call i64 @amdtp_stream_pcm_running(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %46 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %45, i32 0, i32 1
  %47 = call i64 @amdtp_stream_pcm_running(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %44, %39, %35
  %50 = load %struct.snd_bebob_rate_spec*, %struct.snd_bebob_rate_spec** %5, align 8
  %51 = getelementptr inbounds %struct.snd_bebob_rate_spec, %struct.snd_bebob_rate_spec* %50, i32 0, i32 0
  %52 = load i32 (%struct.snd_bebob*, i32*)*, i32 (%struct.snd_bebob*, i32*)** %51, align 8
  %53 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %54 = call i32 %52(%struct.snd_bebob* %53, i32* %6)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %59 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %82

64:                                               ; preds = %49
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %64, %44
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %79 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %78)
  br label %80

80:                                               ; preds = %77, %21
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %86

82:                                               ; preds = %57, %34, %28
  %83 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %84 = call i32 @snd_bebob_stream_lock_release(%struct.snd_bebob* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %80
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @snd_bebob_stream_lock_try(%struct.snd_bebob*) #1

declare dso_local i32 @pcm_init_hw_params(%struct.snd_bebob*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_bebob_stream_get_clock_src(%struct.snd_bebob*, i32*) #1

declare dso_local i64 @amdtp_stream_pcm_running(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_bebob_stream_lock_release(%struct.snd_bebob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
