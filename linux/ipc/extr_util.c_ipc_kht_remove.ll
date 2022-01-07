; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_kht_remove.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_kht_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_ids = type { i32 }
%struct.kern_ipc_perm = type { i64, i32 }

@IPC_PRIVATE = common dso_local global i64 0, align 8
@ipc_kht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipc_ids*, %struct.kern_ipc_perm*)* @ipc_kht_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_kht_remove(%struct.ipc_ids* %0, %struct.kern_ipc_perm* %1) #0 {
  %3 = alloca %struct.ipc_ids*, align 8
  %4 = alloca %struct.kern_ipc_perm*, align 8
  store %struct.ipc_ids* %0, %struct.ipc_ids** %3, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %4, align 8
  %5 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %6 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IPC_PRIVATE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %12 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %11, i32 0, i32 0
  %13 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %14 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %13, i32 0, i32 1
  %15 = load i32, i32* @ipc_kht_params, align 4
  %16 = call i32 @rhashtable_remove_fast(i32* %12, i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
