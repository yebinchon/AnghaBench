; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_free_hdr_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_free_hdr_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_free = type { i32 }
%struct.xfs_dir3_icfree_hdr = type { i64, i64, i64, i64 }
%struct.xfs_dir3_free_hdr = type { i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@XFS_DIR3_FREE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_dir2_free*, %struct.xfs_dir3_icfree_hdr*)* @xfs_dir3_free_hdr_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_free_hdr_to_disk(%struct.xfs_dir2_free* %0, %struct.xfs_dir3_icfree_hdr* %1) #0 {
  %3 = alloca %struct.xfs_dir2_free*, align 8
  %4 = alloca %struct.xfs_dir3_icfree_hdr*, align 8
  %5 = alloca %struct.xfs_dir3_free_hdr*, align 8
  store %struct.xfs_dir2_free* %0, %struct.xfs_dir2_free** %3, align 8
  store %struct.xfs_dir3_icfree_hdr* %1, %struct.xfs_dir3_icfree_hdr** %4, align 8
  %6 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %3, align 8
  %7 = bitcast %struct.xfs_dir2_free* %6 to %struct.xfs_dir3_free_hdr*
  store %struct.xfs_dir3_free_hdr* %7, %struct.xfs_dir3_free_hdr** %5, align 8
  %8 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XFS_DIR3_FREE_MAGIC, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @cpu_to_be32(i64 %17)
  %19 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @cpu_to_be32(i64 %24)
  %26 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @cpu_to_be32(i64 %30)
  %32 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @cpu_to_be32(i64 %36)
  %38 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
