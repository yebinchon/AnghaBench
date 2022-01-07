; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_lblock_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_lblock_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_btree_block = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@__this_address = common dso_local global i32* null, align 8
@NULLFSBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_btree_lblock_verify(%struct.xfs_buf* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_btree_block*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 0
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %6, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %12 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %11)
  store %struct.xfs_btree_block* %12, %struct.xfs_btree_block** %7, align 8
  %13 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %14 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @be16_to_cpu(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32*, i32** @__this_address, align 8
  store i32* %20, i32** %3, align 8
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %23 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @NULLFSBLOCK, align 4
  %28 = call i64 @cpu_to_be64(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %32 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %33 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @be64_to_cpu(i64 %36)
  %38 = call i32 @xfs_verify_fsbno(%struct.xfs_mount* %31, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = load i32*, i32** @__this_address, align 8
  store i32* %41, i32** %3, align 8
  br label %64

42:                                               ; preds = %30, %21
  %43 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %44 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @NULLFSBLOCK, align 4
  %49 = call i64 @cpu_to_be64(i32 %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %53 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %54 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @be64_to_cpu(i64 %57)
  %59 = call i32 @xfs_verify_fsbno(%struct.xfs_mount* %52, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = load i32*, i32** @__this_address, align 8
  store i32* %62, i32** %3, align 8
  br label %64

63:                                               ; preds = %51, %42
  store i32* null, i32** %3, align 8
  br label %64

64:                                               ; preds = %63, %61, %40, %19
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_verify_fsbno(%struct.xfs_mount*, i32) #1

declare dso_local i32 @be64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
