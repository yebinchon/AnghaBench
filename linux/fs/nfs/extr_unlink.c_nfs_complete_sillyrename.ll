; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_complete_sillyrename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_complete_sillyrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs_renamedata = type { %struct.dentry* }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs_renamedata*)* @nfs_complete_sillyrename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_complete_sillyrename(%struct.rpc_task* %0, %struct.nfs_renamedata* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_renamedata*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_renamedata* %1, %struct.nfs_renamedata** %4, align 8
  %6 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %6, i32 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %5, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 @nfs_cancel_async_unlink(%struct.dentry* %14)
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @nfs_cancel_async_unlink(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
