; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_lblock_v5hdr_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_lblock_v5hdr_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_btree_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@__this_address = common dso_local global i32* null, align 8
@XFS_RMAP_OWN_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_btree_lblock_v5hdr_verify(%struct.xfs_buf* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_btree_block*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 1
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %6, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %12 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %11)
  store %struct.xfs_btree_block* %12, %struct.xfs_btree_block** %7, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 0
  %15 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** @__this_address, align 8
  store i32* %18, i32** %3, align 8
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %21 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @uuid_equal(i32* %23, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = load i32*, i32** @__this_address, align 8
  store i32* %30, i32** %3, align 8
  br label %60

31:                                               ; preds = %19
  %32 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %33 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @cpu_to_be64(i32 %39)
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32*, i32** @__this_address, align 8
  store i32* %43, i32** %3, align 8
  br label %60

44:                                               ; preds = %31
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @XFS_RMAP_OWN_UNKNOWN, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @be64_to_cpu(i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32*, i32** @__this_address, align 8
  store i32* %58, i32** %3, align 8
  br label %60

59:                                               ; preds = %48, %44
  store i32* null, i32** %3, align 8
  br label %60

60:                                               ; preds = %59, %57, %42, %29, %17
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_6__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
