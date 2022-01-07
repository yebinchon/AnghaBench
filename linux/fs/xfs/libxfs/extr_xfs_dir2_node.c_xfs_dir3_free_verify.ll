; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_free_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_free_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i64, %struct.xfs_dir3_blk_hdr*, %struct.xfs_mount* }
%struct.xfs_dir3_blk_hdr = type { i32, i32, i32, i32 }
%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_dir2_free_hdr = type { i32, i32, i32, i32 }

@__this_address = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_buf*)* @xfs_dir3_free_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_dir3_free_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_dir2_free_hdr*, align 8
  %6 = alloca %struct.xfs_dir3_blk_hdr*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 2
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  store %struct.xfs_mount* %9, %struct.xfs_mount** %4, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 1
  %12 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %11, align 8
  %13 = bitcast %struct.xfs_dir3_blk_hdr* %12 to %struct.xfs_dir2_free_hdr*
  store %struct.xfs_dir2_free_hdr* %13, %struct.xfs_dir2_free_hdr** %5, align 8
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %15 = load %struct.xfs_dir2_free_hdr*, %struct.xfs_dir2_free_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_dir2_free_hdr, %struct.xfs_dir2_free_hdr* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xfs_verify_magic(%struct.xfs_buf* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32*, i32** @__this_address, align 8
  store i32* %21, i32** %2, align 8
  br label %63

22:                                               ; preds = %1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 0
  %25 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_2__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %22
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %28, i32 0, i32 1
  %30 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %29, align 8
  store %struct.xfs_dir3_blk_hdr* %30, %struct.xfs_dir3_blk_hdr** %6, align 8
  %31 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %31, i32 0, i32 2
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @uuid_equal(i32* %32, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  %39 = load i32*, i32** @__this_address, align 8
  store i32* %39, i32** %2, align 8
  br label %63

40:                                               ; preds = %27
  %41 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be64_to_cpu(i32 %43)
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32*, i32** @__this_address, align 8
  store i32* %50, i32** %2, align 8
  br label %63

51:                                               ; preds = %40
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %53 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @be64_to_cpu(i32 %55)
  %57 = call i32 @xfs_log_check_lsn(%struct.xfs_mount* %52, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = load i32*, i32** @__this_address, align 8
  store i32* %60, i32** %2, align 8
  br label %63

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %22
  store i32* null, i32** %2, align 8
  br label %63

63:                                               ; preds = %62, %59, %49, %38, %20
  %64 = load i32*, i32** %2, align 8
  ret i32* %64
}

declare dso_local i32 @xfs_verify_magic(%struct.xfs_buf*, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_log_check_lsn(%struct.xfs_mount*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
