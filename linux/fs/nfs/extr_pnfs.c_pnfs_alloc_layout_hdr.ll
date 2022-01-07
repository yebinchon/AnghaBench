; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_alloc_layout_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_alloc_layout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32 }
%struct.inode = type { i32 }
%struct.pnfs_layoutdriver_type = type { %struct.pnfs_layout_hdr* (%struct.inode.0*, i32)* }
%struct.inode.0 = type opaque
%struct.TYPE_2__ = type { %struct.pnfs_layoutdriver_type* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_layout_hdr* (%struct.inode*, i32)* @pnfs_alloc_layout_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_layout_hdr* @pnfs_alloc_layout_hdr(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_layoutdriver_type*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.TYPE_2__* @NFS_SERVER(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %8, align 8
  store %struct.pnfs_layoutdriver_type* %9, %struct.pnfs_layoutdriver_type** %5, align 8
  %10 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %5, align 8
  %11 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %10, i32 0, i32 0
  %12 = load %struct.pnfs_layout_hdr* (%struct.inode.0*, i32)*, %struct.pnfs_layout_hdr* (%struct.inode.0*, i32)** %11, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = bitcast %struct.inode* %13 to %struct.inode.0*
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.pnfs_layout_hdr* %12(%struct.inode.0* %14, i32 %15)
  ret %struct.pnfs_layout_hdr* %16
}

declare dso_local %struct.TYPE_2__* @NFS_SERVER(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
