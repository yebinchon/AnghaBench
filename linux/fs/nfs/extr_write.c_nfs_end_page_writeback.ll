; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_end_page_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_end_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

@PG_WB_END = common dso_local global i32 0, align 4
@NFS_CONGESTION_OFF_THRESH = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_end_page_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_end_page_writeback(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %6 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_2__* @page_file_mapping(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %12)
  store %struct.nfs_server* %13, %struct.nfs_server** %4, align 8
  %14 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %15 = load i32, i32* @PG_WB_END, align 4
  %16 = call i32 @nfs_page_group_sync_on_bit(%struct.nfs_page* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %18 = call i32 @nfs_unlock_request(%struct.nfs_page* %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @end_page_writeback(i32 %25)
  %27 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %27, i32 0, i32 0
  %29 = call i64 @atomic_long_dec_return(i32* %28)
  %30 = load i64, i64* @NFS_CONGESTION_OFF_THRESH, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @inode_to_bdi(%struct.inode* %33)
  %35 = load i32, i32* @BLK_RW_ASYNC, align 4
  %36 = call i32 @clear_bdi_congested(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %21, %32, %22
  ret void
}

declare dso_local %struct.TYPE_2__* @page_file_mapping(i32) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_page_group_sync_on_bit(%struct.nfs_page*, i32) #1

declare dso_local i32 @nfs_unlock_request(%struct.nfs_page*) #1

declare dso_local i32 @end_page_writeback(i32) #1

declare dso_local i64 @atomic_long_dec_return(i32*) #1

declare dso_local i32 @clear_bdi_congested(i32, i32) #1

declare dso_local i32 @inode_to_bdi(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
