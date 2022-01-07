; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_get_reply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_get_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { %struct.TYPE_4__, i32, %struct.snd_sof_ipc_msg* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_sof_ipc_msg = type { i32, i32, %struct.sof_ipc_reply* }
%struct.sof_ipc_reply = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unexpected ipc interrupt raised!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"error: reply expected %zu got %u bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*)* @bdw_get_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdw_get_reply(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.snd_sof_ipc_msg*, align 8
  %4 = alloca %struct.sof_ipc_reply, align 4
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 2
  %8 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %7, align 8
  store %struct.snd_sof_ipc_msg* %8, %struct.snd_sof_ipc_msg** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %10 = icmp ne %struct.snd_sof_ipc_msg* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %13 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %19 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sof_mailbox_read(%struct.snd_sof_dev* %17, i32 %21, %struct.sof_ipc_reply* %4, i32 8)
  %23 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %28 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %27, i32 0, i32 2
  %29 = load %struct.sof_ipc_reply*, %struct.sof_ipc_reply** %28, align 8
  %30 = call i32 @memcpy(%struct.sof_ipc_reply* %29, %struct.sof_ipc_reply* %4, i32 8)
  %31 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  br label %73

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %38 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %46 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %4, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %41, %33
  %55 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %56 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %61 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %62 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %66 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %65, i32 0, i32 2
  %67 = load %struct.sof_ipc_reply*, %struct.sof_ipc_reply** %66, align 8
  %68 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %69 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sof_mailbox_read(%struct.snd_sof_dev* %60, i32 %64, %struct.sof_ipc_reply* %67, i32 %70)
  br label %72

72:                                               ; preds = %59, %54
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %3, align 8
  %76 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %11
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @sof_mailbox_read(%struct.snd_sof_dev*, i32, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @memcpy(%struct.sof_ipc_reply*, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
