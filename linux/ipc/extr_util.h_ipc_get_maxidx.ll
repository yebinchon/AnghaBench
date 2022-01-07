; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.h_ipc_get_maxidx.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.h_ipc_get_maxidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_ids = type { i64, i32 }

@ipc_mni = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_ids*)* @ipc_get_maxidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_get_maxidx(%struct.ipc_ids* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipc_ids*, align 8
  store %struct.ipc_ids* %0, %struct.ipc_ids** %3, align 8
  %4 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %5 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %11 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ipc_mni, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i64, i64* @ipc_mni, align 8
  %17 = sub nsw i64 %16, 1
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %9
  %20 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %21 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %15, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
