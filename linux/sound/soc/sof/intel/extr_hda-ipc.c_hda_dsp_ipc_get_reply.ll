; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ipc.c_hda_dsp_ipc_get_reply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ipc.c_hda_dsp_ipc_get_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { %struct.TYPE_4__, i32, %struct.snd_sof_ipc_msg* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_sof_ipc_msg = type { i32, i32, %struct.sof_ipc_reply*, %struct.sof_ipc_cmd_hdr* }
%struct.sof_ipc_reply = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sof_ipc_cmd_hdr = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unexpected ipc interrupt raised!\0A\00", align 1
@SOF_IPC_GLB_PM_MSG = common dso_local global i32 0, align 4
@SOF_IPC_PM_CTX_SAVE = common dso_local global i32 0, align 4
@SOF_IPC_GLB_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"error: reply expected %zu got %u bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hda_dsp_ipc_get_reply(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.snd_sof_ipc_msg*, align 8
  %4 = alloca %struct.sof_ipc_reply, align 4
  %5 = alloca %struct.sof_ipc_cmd_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %7 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %8 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %7, i32 0, i32 2
  %9 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %8, align 8
  store %struct.snd_sof_ipc_msg* %9, %struct.snd_sof_ipc_msg** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %11 = icmp ne %struct.snd_sof_ipc_msg* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %14 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %19 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %18, i32 0, i32 3
  %20 = load %struct.sof_ipc_cmd_hdr*, %struct.sof_ipc_cmd_hdr** %19, align 8
  store %struct.sof_ipc_cmd_hdr* %20, %struct.sof_ipc_cmd_hdr** %5, align 8
  %21 = load %struct.sof_ipc_cmd_hdr*, %struct.sof_ipc_cmd_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_cmd_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SOF_IPC_GLB_PM_MSG, align 4
  %25 = load i32, i32* @SOF_IPC_PM_CTX_SAVE, align 4
  %26 = or i32 %24, %25
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @SOF_IPC_GLB_REPLY, align 4
  %31 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 12, i32* %34, align 4
  %35 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %36 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %35, i32 0, i32 2
  %37 = load %struct.sof_ipc_reply*, %struct.sof_ipc_reply** %36, align 8
  %38 = call i32 @memcpy(%struct.sof_ipc_reply* %37, %struct.sof_ipc_reply* %4, i32 12)
  br label %97

39:                                               ; preds = %17
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %41 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %42 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sof_mailbox_read(%struct.snd_sof_dev* %40, i32 %44, %struct.sof_ipc_reply* %4, i32 12)
  %46 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %51 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %50, i32 0, i32 2
  %52 = load %struct.sof_ipc_reply*, %struct.sof_ipc_reply** %51, align 8
  %53 = call i32 @memcpy(%struct.sof_ipc_reply* %52, %struct.sof_ipc_reply* %4, i32 12)
  %54 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  br label %96

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %61 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %66 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %69 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %64, %56
  %78 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %79 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %84 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %85 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %89 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %88, i32 0, i32 2
  %90 = load %struct.sof_ipc_reply*, %struct.sof_ipc_reply** %89, align 8
  %91 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %92 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sof_mailbox_read(%struct.snd_sof_dev* %83, i32 %87, %struct.sof_ipc_reply* %90, i32 %93)
  br label %95

95:                                               ; preds = %82, %77
  br label %96

96:                                               ; preds = %95, %49
  br label %97

97:                                               ; preds = %96, %28
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %100 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %12
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.sof_ipc_reply*, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @sof_mailbox_read(%struct.snd_sof_dev*, i32, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
