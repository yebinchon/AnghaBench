; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_still_have_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_still_have_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_14__, %struct.TYPE_10__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@XFS_ERRTAG_REFCOUNT_CONTINUE_UPDATE = common dso_local global i32 0, align 4
@XFS_REFCOUNT_ITEM_OVERHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_btree_cur*)* @xfs_refcount_still_have_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_refcount_still_have_space(%struct.xfs_btree_cur* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_btree_cur*, align 8
  %4 = alloca i64, align 8
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %3, align 8
  %5 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %12, i32 0, i32 2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = call i64 @xfs_allocfree_log_count(%struct.TYPE_15__* %14, i32 1)
  %16 = mul i64 %11, %15
  store i64 %16, i64* %4, align 8
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %35 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %34, i32 0, i32 2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = load i32, i32* @XFS_ERRTAG_REFCOUNT_CONTINUE_UPDATE, align 4
  %38 = call i64 @XFS_TEST_ERROR(i32 0, %struct.TYPE_15__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %81

41:                                               ; preds = %33, %1
  %42 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %81

51:                                               ; preds = %41
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %54 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %52, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %81

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %63 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = sub i64 %66, %67
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @XFS_REFCOUNT_ITEM_OVERHEAD, align 8
  %78 = mul i64 %76, %77
  %79 = icmp ugt i64 %68, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %61, %59, %50, %40
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @xfs_allocfree_log_count(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @XFS_TEST_ERROR(i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
