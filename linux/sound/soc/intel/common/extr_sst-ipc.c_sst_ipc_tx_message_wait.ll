; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_sst_ipc_tx_message_wait.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_sst_ipc_tx_message_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i32)* }
%struct.sst_ipc_message = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_ipc_tx_message_wait(%struct.sst_generic_ipc* %0, i32 %1, %struct.sst_ipc_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_ipc_message, align 4
  %6 = alloca %struct.sst_generic_ipc*, align 8
  %7 = alloca %struct.sst_ipc_message*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %6, align 8
  store %struct.sst_ipc_message* %2, %struct.sst_ipc_message** %7, align 8
  %10 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %11 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (i32, i32)*, i64 (i32, i32)** %12, align 8
  %14 = icmp ne i64 (i32, i32)* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %17 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (i32, i32)*, i64 (i32, i32)** %18, align 8
  %20 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %21 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 %19(i32 %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %31 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %7, align 8
  %32 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ipc_tx_message(%struct.sst_generic_ipc* %30, i32 %33, %struct.sst_ipc_message* %31, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %36 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (i32, i32)*, i64 (i32, i32)** %37, align 8
  %39 = icmp ne i64 (i32, i32)* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %42 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (i32, i32)*, i64 (i32, i32)** %43, align 8
  %45 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %46 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 %44(i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %50, %25
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ipc_tx_message(%struct.sst_generic_ipc*, i32, %struct.sst_ipc_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
