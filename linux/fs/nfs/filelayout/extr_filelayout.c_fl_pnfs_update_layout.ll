; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_fl_pnfs_update_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_fl_pnfs_update_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }
%struct.nfs4_filelayout_segment = type { i32 }
%struct.TYPE_2__ = type { %struct.pnfs_layout_hdr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_layout_segment* (%struct.inode*, %struct.nfs_open_context*, i32, i32, i32, i32, i32)* @fl_pnfs_update_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_layout_segment* @fl_pnfs_update_layout(%struct.inode* %0, %struct.nfs_open_context* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nfs_open_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pnfs_layout_segment*, align 8
  %16 = alloca %struct.pnfs_layout_hdr*, align 8
  %17 = alloca %struct.nfs4_filelayout_segment*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.pnfs_layout_segment* null, %struct.pnfs_layout_segment** %15, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = load %struct.nfs_open_context*, %struct.nfs_open_context** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call %struct.pnfs_layout_segment* @pnfs_update_layout(%struct.inode* %19, %struct.nfs_open_context* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store %struct.pnfs_layout_segment* %26, %struct.pnfs_layout_segment** %15, align 8
  %27 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %15, align 8
  %28 = call i64 @IS_ERR_OR_NULL(%struct.pnfs_layout_segment* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %48

31:                                               ; preds = %7
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %34, align 8
  store %struct.pnfs_layout_hdr* %35, %struct.pnfs_layout_hdr** %16, align 8
  %36 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %15, align 8
  %37 = call %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment* %36)
  store %struct.nfs4_filelayout_segment* %37, %struct.nfs4_filelayout_segment** %17, align 8
  %38 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %16, align 8
  %39 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %17, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @filelayout_check_deviceid(%struct.pnfs_layout_hdr* %38, %struct.nfs4_filelayout_segment* %39, i32 %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %15, align 8
  %46 = call i32 @pnfs_put_lseg(%struct.pnfs_layout_segment* %45)
  store %struct.pnfs_layout_segment* null, %struct.pnfs_layout_segment** %15, align 8
  br label %47

47:                                               ; preds = %44, %31
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %15, align 8
  ret %struct.pnfs_layout_segment* %49
}

declare dso_local %struct.pnfs_layout_segment* @pnfs_update_layout(%struct.inode*, %struct.nfs_open_context*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.pnfs_layout_segment*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @filelayout_check_deviceid(%struct.pnfs_layout_hdr*, %struct.nfs4_filelayout_segment*, i32) #1

declare dso_local i32 @pnfs_put_lseg(%struct.pnfs_layout_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
