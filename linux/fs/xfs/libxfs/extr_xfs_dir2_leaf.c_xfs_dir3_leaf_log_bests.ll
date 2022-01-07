; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_log_bests.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_log_bests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, i32 }
%struct.xfs_buf = type { %struct.xfs_dir2_leaf* }
%struct.xfs_dir2_leaf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_da_args*, %struct.xfs_buf*, i32, i32)* @xfs_dir3_leaf_log_bests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_leaf_log_bests(%struct.xfs_da_args* %0, %struct.xfs_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.xfs_dir2_leaf*, align 8
  %12 = alloca i32*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 0
  %15 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %14, align 8
  store %struct.xfs_dir2_leaf* %15, %struct.xfs_dir2_leaf** %11, align 8
  %16 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %17 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %22 = call i64 @cpu_to_be16(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %4
  %25 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %26 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @XFS_DIR3_LEAF1_MAGIC, align 4
  %31 = call i64 @cpu_to_be16(i32 %30)
  %32 = icmp eq i64 %29, %31
  br label %33

33:                                               ; preds = %24, %4
  %34 = phi i1 [ true, %4 ], [ %32, %24 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %41 = call i32* @xfs_dir2_leaf_tail_p(i32 %39, %struct.xfs_dir2_leaf* %40)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32* @xfs_dir2_leaf_bests_p(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32* @xfs_dir2_leaf_bests_p(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %10, align 8
  %52 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %59 = bitcast %struct.xfs_dir2_leaf* %58 to i8*
  %60 = ptrtoint i8* %57 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %10, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %67 = bitcast %struct.xfs_dir2_leaf* %66 to i8*
  %68 = ptrtoint i8* %65 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = add i64 %70, 4
  %72 = sub i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = call i32 @xfs_trans_log_buf(i32 %54, %struct.xfs_buf* %55, i32 %63, i32 %73)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32* @xfs_dir2_leaf_tail_p(i32, %struct.xfs_dir2_leaf*) #1

declare dso_local i32* @xfs_dir2_leaf_bests_p(i32*) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
