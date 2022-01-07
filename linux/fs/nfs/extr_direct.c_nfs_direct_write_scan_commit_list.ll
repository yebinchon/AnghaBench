; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_write_scan_commit_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_write_scan_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.list_head*, %struct.nfs_commit_info*)* @nfs_direct_write_scan_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_write_scan_commit_list(%struct.inode* %0, %struct.list_head* %1, %struct.nfs_commit_info* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.nfs_commit_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %6, align 8
  %7 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.TYPE_10__* @NFS_I(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %19 = call i32 @nfs_scan_commit_list(i32* %16, %struct.list_head* %17, %struct.nfs_commit_info* %18, i32 0)
  %20 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_10__* @NFS_I(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @NFS_I(i32) #1

declare dso_local i32 @nfs_scan_commit_list(i32*, %struct.list_head*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
