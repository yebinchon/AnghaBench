; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_free_hdr_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_free_hdr_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir3_icfree_hdr = type { i8*, i8*, i8*, i8* }
%struct.xfs_dir2_free = type { i32 }
%struct.xfs_dir3_free_hdr = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XFS_DIR3_FREE_MAGIC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)* @xfs_dir3_free_hdr_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_free_hdr_from_disk(%struct.xfs_dir3_icfree_hdr* %0, %struct.xfs_dir2_free* %1) #0 {
  %3 = alloca %struct.xfs_dir3_icfree_hdr*, align 8
  %4 = alloca %struct.xfs_dir2_free*, align 8
  %5 = alloca %struct.xfs_dir3_free_hdr*, align 8
  store %struct.xfs_dir3_icfree_hdr* %0, %struct.xfs_dir3_icfree_hdr** %3, align 8
  store %struct.xfs_dir2_free* %1, %struct.xfs_dir2_free** %4, align 8
  %6 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %4, align 8
  %7 = bitcast %struct.xfs_dir2_free* %6 to %struct.xfs_dir3_free_hdr*
  store %struct.xfs_dir3_free_hdr* %7, %struct.xfs_dir3_free_hdr** %5, align 8
  %8 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @be32_to_cpu(i32 %11)
  %13 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @be32_to_cpu(i32 %17)
  %19 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @be32_to_cpu(i32 %23)
  %25 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be32_to_cpu(i32 %29)
  %31 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir3_icfree_hdr** %3, align 8
  %34 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** @XFS_DIR3_FREE_MAGIC, align 8
  %37 = icmp eq i8* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
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
