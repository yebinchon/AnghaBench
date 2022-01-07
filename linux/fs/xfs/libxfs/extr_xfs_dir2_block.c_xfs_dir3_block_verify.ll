; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir3_block_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir3_block_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i64, %struct.xfs_dir3_blk_hdr*, %struct.xfs_mount* }
%struct.xfs_dir3_blk_hdr = type { i32, i32, i32, i32 }
%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__this_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_buf*)* @xfs_dir3_block_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir3_block_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_dir3_blk_hdr*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 2
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  store %struct.xfs_mount* %8, %struct.xfs_mount** %4, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 1
  %11 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %10, align 8
  store %struct.xfs_dir3_blk_hdr* %11, %struct.xfs_dir3_blk_hdr** %5, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %13 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @xfs_verify_magic(%struct.xfs_buf* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @__this_address, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %21, i32 0, i32 0
  %23 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_2__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %26, i32 0, i32 2
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @uuid_equal(i32* %27, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @__this_address, align 4
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %25
  %36 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be64_to_cpu(i32 %38)
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @__this_address, align 4
  store i32 %45, i32* %2, align 4
  br label %60

46:                                               ; preds = %35
  %47 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %48 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @be64_to_cpu(i32 %50)
  %52 = call i32 @xfs_log_check_lsn(%struct.xfs_mount* %47, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @__this_address, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %59 = call i32 @__xfs_dir3_data_check(i32* null, %struct.xfs_buf* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %54, %44, %33, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @xfs_verify_magic(%struct.xfs_buf*, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_log_check_lsn(%struct.xfs_mount*, i64) #1

declare dso_local i32 @__xfs_dir3_data_check(i32*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
