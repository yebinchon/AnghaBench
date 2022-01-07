; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_free_hdr_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_free_hdr_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir3_icfree_hdr = type { i64, i8*, i8*, i8* }
%struct.xfs_dir2_free = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@XFS_DIR2_FREE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)* @xfs_dir2_free_hdr_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_free_hdr_from_disk(%struct.xfs_dir3_icfree_hdr* %0, %struct.xfs_dir2_free* %1) #0 {
  %3 = alloca %struct.xfs_dir3_icfree_hdr*, align 8
  %4 = alloca %struct.xfs_dir2_free*, align 8
  store %struct.xfs_dir3_icfree_hdr* %0, %struct.xfs_dir3_icfree_hdr** %3, align 8
  store %struct.xfs_dir2_free* %1, %struct.xfs_dir2_free** %4, align 8
  %5 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_dir2_free, %struct.xfs_dir2_free* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @be32_to_cpu(i32 %8)
  %10 = ptrtoint i8* %9 to i64
  %11 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_dir2_free, %struct.xfs_dir2_free* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @be32_to_cpu(i32 %16)
  %18 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_dir2_free, %struct.xfs_dir2_free* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @be32_to_cpu(i32 %23)
  %25 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_dir2_free, %struct.xfs_dir2_free* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @be32_to_cpu(i32 %30)
  %32 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %35 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XFS_DIR2_FREE_MAGIC, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
