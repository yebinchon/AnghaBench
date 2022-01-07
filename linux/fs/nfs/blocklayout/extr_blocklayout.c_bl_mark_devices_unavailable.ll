; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_mark_devices_unavailable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_mark_devices_unavailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pnfs_block_layout = type { i32 }
%struct.pnfs_block_extent = type { i64, i64, i32 }

@SECTOR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*, i32)* @bl_mark_devices_unavailable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bl_mark_devices_unavailable(%struct.nfs_pgio_header* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_pgio_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_block_layout*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pnfs_block_extent, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.pnfs_block_layout* @BLK_LSEG2EXT(i32 %12)
  store %struct.pnfs_block_layout* %13, %struct.pnfs_block_layout** %5, align 8
  %14 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SECTOR_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @SECTOR_SHIFT, align 8
  %30 = shl i64 %28, %29
  %31 = sub i64 %27, %30
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %70, %2
  %35 = load i64, i64* %6, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ext_tree_lookup(%struct.pnfs_block_layout* %38, i64 %39, %struct.pnfs_block_extent* %9, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %71

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %9, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %47, %49
  %51 = sub i64 %46, %50
  store i64 %51, i64* %8, align 8
  %52 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %9, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nfs4_mark_deviceid_unavailable(i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @SECTOR_SHIFT, align 8
  %61 = shl i64 %59, %60
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @SECTOR_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i64, i64* %6, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %70

69:                                               ; preds = %44
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %69, %63
  br label %34

71:                                               ; preds = %43, %34
  ret void
}

declare dso_local %struct.pnfs_block_layout* @BLK_LSEG2EXT(i32) #1

declare dso_local i32 @ext_tree_lookup(%struct.pnfs_block_layout*, i64, %struct.pnfs_block_extent*, i32) #1

declare dso_local i32 @nfs4_mark_deviceid_unavailable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
