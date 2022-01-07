; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_leaf_hdr_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_leaf_hdr_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir3_icleaf_hdr = type { i64, i8*, i8*, i8*, i8* }
%struct.xfs_dir2_leaf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)* @xfs_dir2_leaf_hdr_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_leaf_hdr_from_disk(%struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir2_leaf* %1) #0 {
  %3 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %4 = alloca %struct.xfs_dir2_leaf*, align 8
  store %struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  store %struct.xfs_dir2_leaf* %1, %struct.xfs_dir2_leaf** %4, align 8
  %5 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @be32_to_cpu(i32 %9)
  %11 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @be32_to_cpu(i32 %17)
  %19 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @be16_to_cpu(i32 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be16_to_cpu(i32 %33)
  %35 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @be16_to_cpu(i32 %40)
  %42 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %2
  %50 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %51 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %2
  %56 = phi i1 [ true, %2 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
