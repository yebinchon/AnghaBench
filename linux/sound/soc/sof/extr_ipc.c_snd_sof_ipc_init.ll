; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_ipc = type { %struct.snd_sof_ipc_msg, %struct.snd_sof_dev*, i32 }
%struct.snd_sof_ipc_msg = type { i32, i32, i8*, i8* }
%struct.snd_sof_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"error: ipc mandatory ops not defined\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SOF_IPC_MSG_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_sof_ipc* @snd_sof_ipc_init(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_ipc*, align 8
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.snd_sof_ipc*, align 8
  %5 = alloca %struct.snd_sof_ipc_msg*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %13 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_sof_ipc* null, %struct.snd_sof_ipc** %2, align 8
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %18 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kzalloc(i32 %19, i32 40, i32 %20)
  %22 = bitcast i8* %21 to %struct.snd_sof_ipc*
  store %struct.snd_sof_ipc* %22, %struct.snd_sof_ipc** %4, align 8
  %23 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %24 = icmp ne %struct.snd_sof_ipc* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store %struct.snd_sof_ipc* null, %struct.snd_sof_ipc** %2, align 8
  br label %69

26:                                               ; preds = %16
  %27 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %28 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %27, i32 0, i32 2
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %31 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %32 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %31, i32 0, i32 1
  store %struct.snd_sof_dev* %30, %struct.snd_sof_dev** %32, align 8
  %33 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  %34 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %33, i32 0, i32 0
  store %struct.snd_sof_ipc_msg* %34, %struct.snd_sof_ipc_msg** %5, align 8
  %35 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %36 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %38 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SOF_IPC_MSG_MAX_SIZE, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %44 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %46 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %26
  store %struct.snd_sof_ipc* null, %struct.snd_sof_ipc** %2, align 8
  br label %69

50:                                               ; preds = %26
  %51 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %52 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SOF_IPC_MSG_MAX_SIZE, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @devm_kzalloc(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %58 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %60 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  store %struct.snd_sof_ipc* null, %struct.snd_sof_ipc** %2, align 8
  br label %69

64:                                               ; preds = %50
  %65 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %5, align 8
  %66 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %65, i32 0, i32 1
  %67 = call i32 @init_waitqueue_head(i32* %66)
  %68 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %4, align 8
  store %struct.snd_sof_ipc* %68, %struct.snd_sof_ipc** %2, align 8
  br label %69

69:                                               ; preds = %64, %63, %49, %25, %11
  %70 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %2, align 8
  ret %struct.snd_sof_ipc* %70
}

declare dso_local %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
