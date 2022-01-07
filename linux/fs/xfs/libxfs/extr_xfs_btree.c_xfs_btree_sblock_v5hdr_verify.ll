; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_sblock_v5hdr_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_sblock_v5hdr_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, %struct.xfs_perag*, %struct.xfs_mount* }
%struct.xfs_perag = type { i64 }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_btree_block = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@__this_address = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_btree_sblock_v5hdr_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_btree_block*, align 8
  %6 = alloca %struct.xfs_perag*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 2
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  store %struct.xfs_mount* %9, %struct.xfs_mount** %4, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %11 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %10)
  store %struct.xfs_btree_block* %11, %struct.xfs_btree_block** %5, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %12, i32 0, i32 1
  %14 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  store %struct.xfs_perag* %14, %struct.xfs_perag** %6, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_6__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32*, i32** @__this_address, align 8
  store i32* %20, i32** %2, align 8
  br label %63

21:                                               ; preds = %1
  %22 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @uuid_equal(i32* %25, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load i32*, i32** @__this_address, align 8
  store i32* %32, i32** %2, align 8
  br label %63

33:                                               ; preds = %21
  %34 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %40 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @cpu_to_be64(i32 %41)
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32*, i32** @__this_address, align 8
  store i32* %45, i32** %2, align 8
  br label %63

46:                                               ; preds = %33
  %47 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %48 = icmp ne %struct.xfs_perag* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %5, align 8
  %51 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @be32_to_cpu(i32 %54)
  %56 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %57 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32*, i32** @__this_address, align 8
  store i32* %61, i32** %2, align 8
  br label %63

62:                                               ; preds = %49, %46
  store i32* null, i32** %2, align 8
  br label %63

63:                                               ; preds = %62, %60, %44, %31, %19
  %64 = load i32*, i32** %2, align 8
  ret i32* %64
}

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_6__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
