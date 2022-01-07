; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_hdr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_hdr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32*, i32, %struct.xfs_dsymlink_hdr* }
%struct.xfs_dsymlink_hdr = type { i8*, i8*, i32, i8*, i8*, i8* }

@XFS_SYMLINK_MAGIC = common dso_local global i32 0, align 4
@xfs_symlink_buf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_symlink_hdr_set(%struct.xfs_mount* %0, i32 %1, i32 %2, i32 %3, %struct.xfs_buf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf*, align 8
  %12 = alloca %struct.xfs_dsymlink_hdr*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_buf* %4, %struct.xfs_buf** %11, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 2
  %15 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %14, align 8
  store %struct.xfs_dsymlink_hdr* %15, %struct.xfs_dsymlink_hdr** %12, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_2__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %54

21:                                               ; preds = %5
  %22 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  %23 = call i32 @memset(%struct.xfs_dsymlink_hdr* %22, i32 0, i32 48)
  %24 = load i32, i32* @XFS_SYMLINK_MAGIC, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  %27 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  %31 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  %35 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  %37 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %36, i32 0, i32 2
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @uuid_copy(i32* %37, i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @cpu_to_be64(i32 %42)
  %44 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  %45 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %47 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @cpu_to_be64(i32 %48)
  %50 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  %51 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %53 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %52, i32 0, i32 0
  store i32* @xfs_symlink_buf_ops, i32** %53, align 8
  store i32 48, i32* %6, align 4
  br label %54

54:                                               ; preds = %21, %20
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(%struct.xfs_dsymlink_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
