; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.h_sem_check_semmni.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.h_sem_check_semmni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i64* }

@ipc_mni = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_namespace*)* @sem_check_semmni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sem_check_semmni(%struct.ipc_namespace* %0) #0 {
  %2 = alloca %struct.ipc_namespace*, align 8
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %2, align 8
  %3 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %4 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %11 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 3
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ipc_mni, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9, %1
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  br label %21

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ]
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
