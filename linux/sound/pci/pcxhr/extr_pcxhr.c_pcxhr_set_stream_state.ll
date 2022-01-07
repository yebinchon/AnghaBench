; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_set_stream_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_set_stream_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pcxhr_stream = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__*, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pcxhr_rmh = type { i32 }

@PCXHR_STREAM_STATUS_SCHEDULE_RUN = common dso_local global i64 0, align 8
@PCXHR_STREAM_STATUS_SCHEDULE_STOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"pcxhr_set_stream_state CANNOT be stopped\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_START_STREAM = common dso_local global i32 0, align 4
@CMD_STOP_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ERROR pcxhr_set_stream_state err=%x;\0A\00", align 1
@PCXHR_STREAM_STATUS_STARTED = common dso_local global i64 0, align 8
@PCXHR_STREAM_STATUS_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcxhr*, %struct.pcxhr_stream*)* @pcxhr_set_stream_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_set_stream_state(%struct.snd_pcxhr* %0, %struct.pcxhr_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcxhr*, align 8
  %5 = alloca %struct.pcxhr_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcxhr_rmh, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %4, align 8
  store %struct.pcxhr_stream* %1, %struct.pcxhr_stream** %5, align 8
  %10 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %11 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCXHR_STREAM_STATUS_SCHEDULE_RUN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %18 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCXHR_STREAM_STATUS_SCHEDULE_STOP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %116

31:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %34 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %116

40:                                               ; preds = %32
  %41 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %42 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %44 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %46 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %48 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %50 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %63

56:                                               ; preds = %40
  %57 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %58 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 1, %61
  br label %63

63:                                               ; preds = %56, %55
  %64 = phi i32 [ 1, %55 ], [ %62, %56 ]
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @CMD_START_STREAM, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @CMD_STOP_STREAM, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %7, i32 %72)
  %74 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %75 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %80 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %7, i32 %78, i32 %83, i32 0, i32 %84)
  %86 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %87 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.TYPE_6__* %88)
  store %struct.snd_pcxhr* %89, %struct.snd_pcxhr** %4, align 8
  %90 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %91 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pcxhr_send_msg(i32 %92, %struct.pcxhr_rmh* %7)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %71
  %97 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %98 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %96, %71
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i64, i64* @PCXHR_STREAM_STATUS_STARTED, align 8
  br label %111

109:                                              ; preds = %104
  %110 = load i64, i64* @PCXHR_STREAM_STATUS_STOPPED, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i64 [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %114 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %37, %22
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh*, i32, i32, i32, i32) #1

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.TYPE_6__*) #1

declare dso_local i32 @pcxhr_send_msg(i32, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
