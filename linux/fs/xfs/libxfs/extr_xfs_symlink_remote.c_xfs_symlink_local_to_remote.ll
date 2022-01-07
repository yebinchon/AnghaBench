; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_local_to_remote.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_local_to_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i8*, i32*, i32 }
%struct.xfs_inode = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_ifork = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XFS_BLFT_SYMLINK_BUF = common dso_local global i32 0, align 4
@xfs_symlink_buf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_symlink_local_to_remote(%struct.xfs_trans* %0, %struct.xfs_buf* %1, %struct.xfs_inode* %2, %struct.xfs_ifork* %3) #0 {
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_ifork*, align 8
  %9 = alloca %struct.xfs_mount*, align 8
  %10 = alloca i8*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store %struct.xfs_inode* %2, %struct.xfs_inode** %7, align 8
  store %struct.xfs_ifork* %3, %struct.xfs_ifork** %8, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 1
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  store %struct.xfs_mount* %13, %struct.xfs_mount** %9, align 8
  %14 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %16 = load i32, i32* @XFS_BLFT_SYMLINK_BUF, align 4
  %17 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %14, %struct.xfs_buf* %15, i32 %16)
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = call i32 @xfs_sb_version_hascrc(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %4
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %26 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %29 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %33 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i8* %27, i32 %31, i32 %34)
  %36 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %38 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %39 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = call i32 @xfs_trans_log_buf(%struct.xfs_trans* %36, %struct.xfs_buf* %37, i32 0, i64 %42)
  br label %92

44:                                               ; preds = %4
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @BBTOB(i32 %47)
  %49 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %50 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = icmp uge i64 %48, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %58 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %57, i32 0, i32 1
  store i32* @xfs_symlink_buf_ops, i32** %58, align 8
  %59 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %60 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %10, align 8
  %62 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %63 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %64 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %67 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %70 = call i32 @xfs_symlink_hdr_set(%struct.xfs_mount* %62, i32 %65, i32 0, i32 %68, %struct.xfs_buf* %69)
  %71 = load i8*, i8** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %76 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %80 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i8* %74, i32 %78, i32 %81)
  %83 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %84 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %85 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %86 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 4, %88
  %90 = sub i64 %89, 1
  %91 = call i32 @xfs_trans_log_buf(%struct.xfs_trans* %83, %struct.xfs_buf* %84, i32 0, i64 %90)
  br label %92

92:                                               ; preds = %44, %22
  ret void
}

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @xfs_trans_log_buf(%struct.xfs_trans*, %struct.xfs_buf*, i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BBTOB(i32) #1

declare dso_local i32 @xfs_symlink_hdr_set(%struct.xfs_mount*, i32, i32, i32, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
