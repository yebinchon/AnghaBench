; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_free_extent_fix_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_free_extent_fix_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_buf = type { i32 }
%struct.xfs_alloc_arg = type { i64, i32, %struct.xfs_buf*, %struct.TYPE_4__*, %struct.xfs_trans* }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_ALLOC_FLAG_FREEING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_free_extent_fix_freelist(%struct.xfs_trans* %0, i64 %1, %struct.xfs_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_buf**, align 8
  %8 = alloca %struct.xfs_alloc_arg, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %7, align 8
  %10 = call i32 @memset(%struct.xfs_alloc_arg* %8, i32 0, i32 40)
  %11 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 4
  store %struct.xfs_trans* %11, %struct.xfs_trans** %12, align 8
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 3
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EFSCORRUPTED, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @xfs_perag_get(%struct.TYPE_4__* %32, i64 %34)
  %36 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* @XFS_ALLOC_FLAG_FREEING, align 4
  %41 = call i32 @xfs_alloc_fix_freelist(%struct.xfs_alloc_arg* %8, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %49

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 2
  %47 = load %struct.xfs_buf*, %struct.xfs_buf** %46, align 8
  %48 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  store %struct.xfs_buf* %47, %struct.xfs_buf** %48, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @xfs_perag_put(i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %27
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.xfs_alloc_arg*, i32, i32) #1

declare dso_local i32 @xfs_perag_get(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_alloc_fix_freelist(%struct.xfs_alloc_arg*, i32) #1

declare dso_local i32 @xfs_perag_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
