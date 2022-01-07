; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.xfs_refcount_irec = type { i32, i32, i32 }

@out_error = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_refcount_insert(%struct.xfs_btree_cur* %0, %struct.xfs_refcount_irec* %1, i32* %2) #0 {
  %4 = alloca %struct.xfs_btree_cur*, align 8
  %5 = alloca %struct.xfs_refcount_irec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %4, align 8
  store %struct.xfs_refcount_irec* %1, %struct.xfs_refcount_irec** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %5, align 8
  %17 = call i32 @trace_xfs_refcount_insert(i32 %10, i32 %15, %struct.xfs_refcount_irec* %16)
  %18 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32 %20, i32* %24, align 4
  %25 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @xfs_btree_insert(%struct.xfs_btree_cur* %39, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %55

45:                                               ; preds = %3
  %46 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @out_error, align 4
  %54 = call i32 @XFS_WANT_CORRUPTED_GOTO(i32 %48, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %44
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %60 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %63 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @_RET_IP_, align 4
  %69 = call i32 @trace_xfs_refcount_insert_error(i32 %61, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %55
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @trace_xfs_refcount_insert(i32, i32, %struct.xfs_refcount_irec*) #1

declare dso_local i32 @xfs_btree_insert(%struct.xfs_btree_cur*, i32*) #1

declare dso_local i32 @XFS_WANT_CORRUPTED_GOTO(i32, i32, i32) #1

declare dso_local i32 @trace_xfs_refcount_insert_error(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
