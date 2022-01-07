; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_intel-ipc.c_intel_ipc_msg_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_intel-ipc.c_intel_ipc_msg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.intel_stream* }
%struct.intel_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ipc_msg_data(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intel_stream*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %11 = icmp ne %struct.snd_pcm_substream* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %14 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12, %4
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %20 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %21 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @sof_mailbox_read(%struct.snd_sof_dev* %19, i32 %23, i8* %24, i64 %25)
  br label %44

27:                                               ; preds = %12
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.intel_stream*, %struct.intel_stream** %31, align 8
  store %struct.intel_stream* %32, %struct.intel_stream** %9, align 8
  %33 = load %struct.intel_stream*, %struct.intel_stream** %9, align 8
  %34 = icmp ne %struct.intel_stream* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %37 = load %struct.intel_stream*, %struct.intel_stream** %9, align 8
  %38 = getelementptr inbounds %struct.intel_stream, %struct.intel_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @sof_mailbox_read(%struct.snd_sof_dev* %36, i32 %39, i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %35, %27
  br label %44

44:                                               ; preds = %43, %18
  ret void
}

declare dso_local i32 @sof_mailbox_read(%struct.snd_sof_dev*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
