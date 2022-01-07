; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_leaf_hdr_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_leaf_hdr_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir3_icleaf_hdr = type { i8*, i8*, i8*, i8*, i8* }
%struct.xfs_dir2_leaf = type { i32 }
%struct.xfs_dir3_leaf_hdr = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@XFS_DIR3_LEAF1_MAGIC = common dso_local global i8* null, align 8
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)* @xfs_dir3_leaf_hdr_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_leaf_hdr_from_disk(%struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir2_leaf* %1) #0 {
  %3 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %4 = alloca %struct.xfs_dir2_leaf*, align 8
  %5 = alloca %struct.xfs_dir3_leaf_hdr*, align 8
  store %struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  store %struct.xfs_dir2_leaf* %1, %struct.xfs_dir2_leaf** %4, align 8
  %6 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %4, align 8
  %7 = bitcast %struct.xfs_dir2_leaf* %6 to %struct.xfs_dir3_leaf_hdr*
  store %struct.xfs_dir3_leaf_hdr* %7, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %8 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @be32_to_cpu(i32 %12)
  %14 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @be32_to_cpu(i32 %20)
  %22 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @be16_to_cpu(i32 %28)
  %30 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %31 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @be16_to_cpu(i32 %34)
  %36 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %37 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @be16_to_cpu(i32 %40)
  %42 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @XFS_DIR3_LEAF1_MAGIC, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %2
  %50 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %3, align 8
  %51 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** @XFS_DIR3_LEAFN_MAGIC, align 8
  %54 = icmp eq i8* %52, %53
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
