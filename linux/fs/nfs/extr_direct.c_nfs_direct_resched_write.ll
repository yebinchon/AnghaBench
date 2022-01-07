; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_resched_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_resched_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_info = type { %struct.nfs_direct_req* }
%struct.nfs_direct_req = type { i32, i32 }
%struct.nfs_page = type { i32 }

@NFS_ODIRECT_RESCHED_WRITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_info*, %struct.nfs_page*)* @nfs_direct_resched_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_resched_write(%struct.nfs_commit_info* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_commit_info*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.nfs_direct_req*, align 8
  store %struct.nfs_commit_info* %0, %struct.nfs_commit_info** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %6 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %6, i32 0, i32 0
  %8 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %7, align 8
  store %struct.nfs_direct_req* %8, %struct.nfs_direct_req** %5, align 8
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* @NFS_ODIRECT_RESCHED_WRITES, align 4
  %13 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %19 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %20 = call i32 @nfs_mark_request_commit(%struct.nfs_page* %18, i32* null, %struct.nfs_commit_info* %19, i32 0)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_mark_request_commit(%struct.nfs_page*, i32*, %struct.nfs_commit_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
