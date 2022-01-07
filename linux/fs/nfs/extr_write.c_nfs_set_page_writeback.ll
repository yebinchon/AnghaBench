; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_set_page_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_set_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

@NFS_CONGESTION_ON_THRESH = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @nfs_set_page_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_set_page_writeback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call %struct.TYPE_2__* @page_file_mapping(%struct.page* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %4, align 8
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @test_set_page_writeback(%struct.page* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  %20 = call i64 @atomic_long_inc_return(i32* %19)
  %21 = load i64, i64* @NFS_CONGESTION_ON_THRESH, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i32 @inode_to_bdi(%struct.inode* %24)
  %26 = load i32, i32* @BLK_RW_ASYNC, align 4
  %27 = call i32 @set_bdi_congested(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @page_file_mapping(%struct.page*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @test_set_page_writeback(%struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_long_inc_return(i32*) #1

declare dso_local i32 @set_bdi_congested(i32, i32) #1

declare dso_local i32 @inode_to_bdi(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
