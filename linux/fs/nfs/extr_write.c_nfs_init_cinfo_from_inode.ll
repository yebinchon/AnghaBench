; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_init_cinfo_from_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_init_cinfo_from_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_info = type { i32*, i32*, i32, i32*, %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nfs_commit_completion_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_info*, %struct.inode*)* @nfs_init_cinfo_from_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_init_cinfo_from_inode(%struct.nfs_commit_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nfs_commit_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.nfs_commit_info* %0, %struct.nfs_commit_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %6, i32 0, i32 4
  store %struct.inode* %5, %struct.inode** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32 @pnfs_get_ds_info(%struct.inode* %13)
  %15 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %19, i32 0, i32 0
  store i32* @nfs_commit_completion_ops, i32** %20, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @pnfs_get_ds_info(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
