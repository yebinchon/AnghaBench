; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_force_use_readdirplus.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_force_use_readdirplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { i32, i32 }

@NFS_CAP_READDIRPLUS = common dso_local global i32 0, align 4
@NFS_INO_ADVISE_RDPLUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_force_use_readdirplus(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.nfs_inode* @NFS_I(%struct.inode* %4)
  store %struct.nfs_inode* %5, %struct.nfs_inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = load i32, i32* @NFS_CAP_READDIRPLUS, align 4
  %8 = call i64 @nfs_server_capable(%struct.inode* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %11, i32 0, i32 1
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @NFS_INO_ADVISE_RDPLUS, align 4
  %17 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @invalidate_mapping_pages(i32 %22, i32 0, i32 -1)
  br label %24

24:                                               ; preds = %15, %10, %1
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
