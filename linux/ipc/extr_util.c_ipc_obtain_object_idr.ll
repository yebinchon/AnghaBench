; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_obtain_object_idr.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_obtain_object_idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.ipc_ids = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kern_ipc_perm* @ipc_obtain_object_idr(%struct.ipc_ids* %0, i32 %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca %struct.ipc_ids*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ipcid_to_idx(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ipc_ids*, %struct.ipc_ids** %4, align 8
  %11 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %10, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.kern_ipc_perm* @idr_find(i32* %11, i32 %12)
  store %struct.kern_ipc_perm* %13, %struct.kern_ipc_perm** %6, align 8
  %14 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %15 = icmp ne %struct.kern_ipc_perm* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.kern_ipc_perm* @ERR_PTR(i32 %18)
  store %struct.kern_ipc_perm* %19, %struct.kern_ipc_perm** %3, align 8
  br label %22

20:                                               ; preds = %2
  %21 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  store %struct.kern_ipc_perm* %21, %struct.kern_ipc_perm** %3, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  ret %struct.kern_ipc_perm* %23
}

declare dso_local i32 @ipcid_to_idx(i32) #1

declare dso_local %struct.kern_ipc_perm* @idr_find(i32*, i32) #1

declare dso_local %struct.kern_ipc_perm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
