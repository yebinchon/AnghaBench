; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_ipc_xrun.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_ipc_xrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_sof_pcm_stream = type { i32, i32 }
%struct.sof_ipc_stream_posn = type { i32, i32, i32 }
%struct.snd_sof_pcm = type { %struct.snd_sof_pcm_stream* }

@.str = private unnamed_addr constant [43 x i8] c"error: XRUN for unknown stream, msg_id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"posn XRUN: host %llx comp %d size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*, i32)* @ipc_xrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_xrun(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sof_pcm_stream*, align 8
  %6 = alloca %struct.sof_ipc_stream_posn, align 4
  %7 = alloca %struct.snd_sof_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_comp(%struct.snd_sof_dev* %9, i32 %10, i32* %8)
  store %struct.snd_sof_pcm* %11, %struct.snd_sof_pcm** %7, align 8
  %12 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %13 = icmp ne %struct.snd_sof_pcm* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %16 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %22 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %21, i32 0, i32 0
  %23 = load %struct.snd_sof_pcm_stream*, %struct.snd_sof_pcm_stream** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_sof_pcm_stream, %struct.snd_sof_pcm_stream* %23, i64 %25
  store %struct.snd_sof_pcm_stream* %26, %struct.snd_sof_pcm_stream** %5, align 8
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %28 = load %struct.snd_sof_pcm_stream*, %struct.snd_sof_pcm_stream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_sof_pcm_stream, %struct.snd_sof_pcm_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_sof_ipc_msg_data(%struct.snd_sof_dev* %27, i32 %30, %struct.sof_ipc_stream_posn* %6, i32 12)
  %32 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %33 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.sof_ipc_stream_posn, %struct.sof_ipc_stream_posn* %6, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.sof_ipc_stream_posn, %struct.sof_ipc_stream_posn* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.sof_ipc_stream_posn, %struct.sof_ipc_stream_posn* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %20, %14
  ret void
}

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_comp(%struct.snd_sof_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_sof_ipc_msg_data(%struct.snd_sof_dev*, i32, %struct.sof_ipc_stream_posn*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
