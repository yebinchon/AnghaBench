; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_msgs_rx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_msgs_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32 }
%struct.sof_ipc_cmd_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.snd_sof_dev*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"ipc rx\00", align 1
@SOF_GLB_TYPE_MASK = common dso_local global i32 0, align 4
@SOF_CMD_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error: ipc reply unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"error: ABI mismatch %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"error: unknown DSP message 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ipc rx done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_sof_ipc_msgs_rx(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.sof_ipc_cmd_hdr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %8 = call i32 @snd_sof_ipc_msg_data(%struct.snd_sof_dev* %7, i32* null, %struct.sof_ipc_cmd_hdr* %3, i32 4)
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %10 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ipc_log_header(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SOF_GLB_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SOF_CMD_TYPE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %68 [
    i32 131, label %24
    i32 135, label %29
    i32 134, label %58
    i32 129, label %58
    i32 132, label %58
    i32 133, label %58
    i32 130, label %59
    i32 128, label %64
  ]

24:                                               ; preds = %1
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %26 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %31 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %29
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %36 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.snd_sof_dev*, i32)*, i32 (%struct.snd_sof_dev*, i32)** %37, align 8
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %38(%struct.snd_sof_dev* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %46 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %53

50:                                               ; preds = %34
  %51 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %52 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %55 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %54, i32 0, i32 2
  %56 = call i32 @wake_up(i32* %55)
  br label %57

57:                                               ; preds = %53, %29
  br label %74

58:                                               ; preds = %1, %1, %1, %1
  br label %74

59:                                               ; preds = %1
  %60 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %61 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ipc_stream_message(%struct.snd_sof_dev* %60, i32 %62)
  br label %74

64:                                               ; preds = %1
  %65 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ipc_trace_message(%struct.snd_sof_dev* %65, i32 %66)
  br label %74

68:                                               ; preds = %1
  %69 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %70 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %64, %59, %58, %57, %24
  %75 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %76 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %3, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ipc_log_header(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  ret void
}

declare dso_local i32 @snd_sof_ipc_msg_data(%struct.snd_sof_dev*, i32*, %struct.sof_ipc_cmd_hdr*, i32) #1

declare dso_local i32 @ipc_log_header(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ipc_stream_message(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @ipc_trace_message(%struct.snd_sof_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
