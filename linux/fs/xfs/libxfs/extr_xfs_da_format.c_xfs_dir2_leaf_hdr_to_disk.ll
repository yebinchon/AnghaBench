; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_leaf_hdr_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_leaf_hdr_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_leaf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.xfs_dir3_icleaf_hdr = type { i64, i64, i64, i32, i32 }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_dir2_leaf*, %struct.xfs_dir3_icleaf_hdr*)* @xfs_dir2_leaf_hdr_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_leaf_hdr_to_disk(%struct.xfs_dir2_leaf* %0, %struct.xfs_dir3_icleaf_hdr* %1) #0 {
  %3 = alloca %struct.xfs_dir2_leaf*, align 8
  %4 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  store %struct.xfs_dir2_leaf* %0, %struct.xfs_dir2_leaf** %3, align 8
  store %struct.xfs_dir3_icleaf_hdr* %1, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %5 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ true, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i8* %23, i8** %27, align 8
  %28 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  %36 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @cpu_to_be16(i64 %38)
  %40 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @cpu_to_be16(i64 %46)
  %48 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @cpu_to_be16(i64 %53)
  %55 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %3, align 8
  %56 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
