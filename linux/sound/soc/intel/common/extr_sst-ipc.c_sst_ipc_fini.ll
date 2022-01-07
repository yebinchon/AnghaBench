; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_sst_ipc_fini.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_sst_ipc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }

@IPC_EMPTY_LIST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_ipc_fini(%struct.sst_generic_ipc* %0) #0 {
  %2 = alloca %struct.sst_generic_ipc*, align 8
  %3 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %2, align 8
  %4 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %2, align 8
  %5 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %4, i32 0, i32 1
  %6 = call i32 @cancel_work_sync(i32* %5)
  %7 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %2, align 8
  %8 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IPC_EMPTY_LIST_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %2, align 8
  %18 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @kfree(%struct.TYPE_6__* %25)
  %27 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %2, align 8
  %28 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @kfree(%struct.TYPE_6__* %35)
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %2, align 8
  %42 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @kfree(%struct.TYPE_6__* %43)
  br label %45

45:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
