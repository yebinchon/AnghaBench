; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_insert_lseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_insert_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.list_head = type { i32 }
%struct.pnfs_layoutdriver_type = type { i32 (%struct.pnfs_layout_hdr.0*, %struct.pnfs_layout_segment.1*, %struct.list_head.2*)* }
%struct.pnfs_layout_hdr.0 = type opaque
%struct.pnfs_layout_segment.1 = type opaque
%struct.list_head.2 = type opaque
%struct.TYPE_2__ = type { %struct.pnfs_layoutdriver_type* }

@pnfs_lseg_range_is_after = common dso_local global i32 0, align 4
@pnfs_lseg_no_merge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_hdr*, %struct.pnfs_layout_segment*, %struct.list_head*)* @pnfs_layout_insert_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_layout_insert_lseg(%struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_segment* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.pnfs_layoutdriver_type*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %4, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %9 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call %struct.TYPE_2__* @NFS_SERVER(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %14, align 8
  store %struct.pnfs_layoutdriver_type* %15, %struct.pnfs_layoutdriver_type** %8, align 8
  %16 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %8, align 8
  %17 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %16, i32 0, i32 0
  %18 = load i32 (%struct.pnfs_layout_hdr.0*, %struct.pnfs_layout_segment.1*, %struct.list_head.2*)*, i32 (%struct.pnfs_layout_hdr.0*, %struct.pnfs_layout_segment.1*, %struct.list_head.2*)** %17, align 8
  %19 = icmp ne i32 (%struct.pnfs_layout_hdr.0*, %struct.pnfs_layout_segment.1*, %struct.list_head.2*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %8, align 8
  %22 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %21, i32 0, i32 0
  %23 = load i32 (%struct.pnfs_layout_hdr.0*, %struct.pnfs_layout_segment.1*, %struct.list_head.2*)*, i32 (%struct.pnfs_layout_hdr.0*, %struct.pnfs_layout_segment.1*, %struct.list_head.2*)** %22, align 8
  %24 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %25 = bitcast %struct.pnfs_layout_hdr* %24 to %struct.pnfs_layout_hdr.0*
  %26 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %27 = bitcast %struct.pnfs_layout_segment* %26 to %struct.pnfs_layout_segment.1*
  %28 = load %struct.list_head*, %struct.list_head** %6, align 8
  %29 = bitcast %struct.list_head* %28 to %struct.list_head.2*
  %30 = call i32 %23(%struct.pnfs_layout_hdr.0* %25, %struct.pnfs_layout_segment.1* %27, %struct.list_head.2* %29)
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %33 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %34 = load i32, i32* @pnfs_lseg_range_is_after, align 4
  %35 = load i32, i32* @pnfs_lseg_no_merge, align 4
  %36 = load %struct.list_head*, %struct.list_head** %6, align 8
  %37 = call i32 @pnfs_generic_layout_insert_lseg(%struct.pnfs_layout_hdr* %32, %struct.pnfs_layout_segment* %33, i32 %34, i32 %35, %struct.list_head* %36)
  br label %38

38:                                               ; preds = %31, %20
  ret void
}

declare dso_local %struct.TYPE_2__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @pnfs_generic_layout_insert_lseg(%struct.pnfs_layout_hdr*, %struct.pnfs_layout_segment*, i32, i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
