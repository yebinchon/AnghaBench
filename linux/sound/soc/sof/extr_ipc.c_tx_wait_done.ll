; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_tx_wait_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_tx_wait_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_ipc = type { %struct.snd_sof_dev* }
%struct.snd_sof_dev = type { i32, i32 }
%struct.snd_sof_ipc_msg = type { i32, i32, i32, i32, i32, %struct.sof_ipc_cmd_hdr* }
%struct.sof_ipc_cmd_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"error: ipc timed out for 0x%x size %d\0A\00", align 1
@SOF_DBG_REGS = common dso_local global i32 0, align 4
@SOF_DBG_MBOX = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"error: ipc error for 0x%x size %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ipc tx succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_ipc*, %struct.snd_sof_ipc_msg*, i8*)* @tx_wait_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_wait_done(%struct.snd_sof_ipc* %0, %struct.snd_sof_ipc_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_sof_ipc*, align 8
  %5 = alloca %struct.snd_sof_ipc_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_sof_dev*, align 8
  %8 = alloca %struct.sof_ipc_cmd_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_sof_ipc* %0, %struct.snd_sof_ipc** %4, align 8
  store %struct.snd_sof_ipc_msg* %1, %struct.snd_sof_ipc_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %11 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %10, i32 0, i32 0
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %11, align 8
  store %struct.snd_sof_dev* %12, %struct.snd_sof_dev** %7, align 8
  %13 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %14 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %13, i32 0, i32 5
  %15 = load %struct.sof_ipc_cmd_hdr*, %struct.sof_ipc_cmd_hdr** %14, align 8
  store %struct.sof_ipc_cmd_hdr* %15, %struct.sof_ipc_cmd_hdr** %8, align 8
  %16 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %17 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %20 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %23 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @msecs_to_jiffies(i32 %24)
  %26 = call i32 @wait_event_timeout(i32 %18, i32 %21, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %3
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %31 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sof_ipc_cmd_hdr*, %struct.sof_ipc_cmd_hdr** %8, align 8
  %34 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sof_ipc_cmd_hdr*, %struct.sof_ipc_cmd_hdr** %8, align 8
  %37 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %41 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %40, i32 0, i32 0
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %41, align 8
  %43 = load i32, i32* @SOF_DBG_REGS, align 4
  %44 = load i32, i32* @SOF_DBG_MBOX, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @snd_sof_dsp_dbg_dump(%struct.snd_sof_dev* %42, i32 %45)
  %47 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %48 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %47, i32 0, i32 0
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %48, align 8
  %50 = call i32 @snd_sof_ipc_dump(%struct.snd_sof_dev* %49)
  %51 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %52 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %51, i32 0, i32 0
  %53 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %52, align 8
  %54 = call i32 @snd_sof_trace_notify_for_error(%struct.snd_sof_dev* %53)
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %97

57:                                               ; preds = %3
  %58 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %59 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  %61 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %62 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %68 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %71 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i8* %66, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %57
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %79 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sof_ipc_cmd_hdr*, %struct.sof_ipc_cmd_hdr** %8, align 8
  %82 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %85 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86)
  br label %96

88:                                               ; preds = %74
  %89 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %90 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sof_ipc_cmd_hdr*, %struct.sof_ipc_cmd_hdr** %8, align 8
  %93 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ipc_log_header(i32 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %88, %77
  br label %97

97:                                               ; preds = %96, %29
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_dbg_dump(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @snd_sof_ipc_dump(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_trace_notify_for_error(%struct.snd_sof_dev*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ipc_log_header(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
