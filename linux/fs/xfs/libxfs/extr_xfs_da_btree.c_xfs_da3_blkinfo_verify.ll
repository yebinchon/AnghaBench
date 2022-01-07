; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_blkinfo_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_blkinfo_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i64, %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_da3_blkinfo = type { i32, i32, i32, %struct.xfs_da_blkinfo }
%struct.xfs_da_blkinfo = type { i32 }

@__this_address = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_da3_blkinfo_verify(%struct.xfs_buf* %0, %struct.xfs_da3_blkinfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_da3_blkinfo*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_da_blkinfo*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.xfs_da3_blkinfo* %1, %struct.xfs_da3_blkinfo** %5, align 8
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 1
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %6, align 8
  %11 = load %struct.xfs_da3_blkinfo*, %struct.xfs_da3_blkinfo** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_da3_blkinfo, %struct.xfs_da3_blkinfo* %11, i32 0, i32 3
  store %struct.xfs_da_blkinfo* %12, %struct.xfs_da_blkinfo** %7, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %14 = load %struct.xfs_da_blkinfo*, %struct.xfs_da_blkinfo** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_da_blkinfo, %struct.xfs_da_blkinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xfs_verify_magic16(%struct.xfs_buf* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** @__this_address, align 8
  store i32* %20, i32** %3, align 8
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %23 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %22, i32 0, i32 0
  %24 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_2__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %21
  %27 = load %struct.xfs_da3_blkinfo*, %struct.xfs_da3_blkinfo** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_da3_blkinfo, %struct.xfs_da3_blkinfo* %27, i32 0, i32 2
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @uuid_equal(i32* %28, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** @__this_address, align 8
  store i32* %35, i32** %3, align 8
  br label %59

36:                                               ; preds = %26
  %37 = load %struct.xfs_da3_blkinfo*, %struct.xfs_da3_blkinfo** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_da3_blkinfo, %struct.xfs_da3_blkinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @be64_to_cpu(i32 %39)
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32*, i32** @__this_address, align 8
  store i32* %46, i32** %3, align 8
  br label %59

47:                                               ; preds = %36
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %49 = load %struct.xfs_da3_blkinfo*, %struct.xfs_da3_blkinfo** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_da3_blkinfo, %struct.xfs_da3_blkinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @be64_to_cpu(i32 %51)
  %53 = call i32 @xfs_log_check_lsn(%struct.xfs_mount* %48, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = load i32*, i32** @__this_address, align 8
  store i32* %56, i32** %3, align 8
  br label %59

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %21
  store i32* null, i32** %3, align 8
  br label %59

59:                                               ; preds = %58, %55, %45, %34, %19
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i32 @xfs_verify_magic16(%struct.xfs_buf*, i32) #1

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
