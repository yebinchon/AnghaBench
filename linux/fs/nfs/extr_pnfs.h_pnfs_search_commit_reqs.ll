; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.h_pnfs_search_commit_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.h_pnfs_search_commit_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.inode*, %struct.nfs_commit_info*, %struct.page*)* @pnfs_search_commit_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @pnfs_search_commit_reqs(%struct.inode* %0, %struct.nfs_commit_info* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_commit_info*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  ret %struct.nfs_page* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
