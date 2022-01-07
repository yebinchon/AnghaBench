; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i64, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}*, i32 (%struct.snd_ff*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@CALLBACK_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ff_stream_start_duplex(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %127

13:                                               ; preds = %2
  %14 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %14, i32 0, i32 3
  %16 = call i64 @amdtp_streaming_error(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %19, i32 0, i32 4
  %21 = call i64 @amdtp_streaming_error(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %13
  %24 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %24, i32 0, i32 1
  %26 = call i32 @amdtp_domain_stop(i32* %25)
  %27 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %28 = call i32 @finish_session(%struct.snd_ff* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %30, i32 0, i32 4
  %32 = call i32 @amdtp_stream_running(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %119, label %34

34:                                               ; preds = %29
  %35 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_10__* @fw_parent_device(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.snd_ff*, i32)**
  %48 = load i32 (%struct.snd_ff*, i32)*, i32 (%struct.snd_ff*, i32)** %47, align 8
  %49 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 %48(%struct.snd_ff* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %120

55:                                               ; preds = %34
  %56 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %56, i32 0, i32 1
  %58 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %58, i32 0, i32 4
  %60 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @amdtp_domain_add_stream(i32* %57, i32* %59, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %120

69:                                               ; preds = %55
  %70 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %70, i32 0, i32 1
  %72 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %73 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %72, i32 0, i32 3
  %74 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %75 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @amdtp_domain_add_stream(i32* %71, i32* %73, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %120

83:                                               ; preds = %69
  %84 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %85 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %84, i32 0, i32 1
  %86 = call i32 @amdtp_domain_start(i32* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %120

90:                                               ; preds = %83
  %91 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %92 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %91, i32 0, i32 4
  %93 = load i32, i32* @CALLBACK_TIMEOUT_MS, align 4
  %94 = call i32 @amdtp_stream_wait_callback(i32* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %98 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %97, i32 0, i32 3
  %99 = load i32, i32* @CALLBACK_TIMEOUT_MS, align 4
  %100 = call i32 @amdtp_stream_wait_callback(i32* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %96, %90
  %103 = load i32, i32* @ETIMEDOUT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %120

105:                                              ; preds = %96
  %106 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %107 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %106, i32 0, i32 2
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32 (%struct.snd_ff*, i32)*, i32 (%struct.snd_ff*, i32)** %111, align 8
  %113 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %114 = call i32 %112(%struct.snd_ff* %113, i32 1)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %120

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %29
  store i32 0, i32* %3, align 4
  br label %127

120:                                              ; preds = %117, %102, %89, %82, %68, %54
  %121 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %122 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %121, i32 0, i32 1
  %123 = call i32 @amdtp_domain_stop(i32* %122)
  %124 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %125 = call i32 @finish_session(%struct.snd_ff* %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %120, %119, %12
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_ff*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local %struct.TYPE_10__* @fw_parent_device(i32) #1

declare dso_local i32 @amdtp_domain_add_stream(i32*, i32*, i32, i32) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
