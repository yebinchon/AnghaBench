; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8*, i32, i32 }

@done = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rmap_insert(%struct.xfs_btree_cur* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.xfs_btree_cur*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %16 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %19 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @trace_xfs_rmap_insert(i32 %17, i32 %22, i32 %23, i32 %24, i8* %25, i8* %26, i32 %27)
  %29 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @xfs_rmap_lookup_eq(%struct.xfs_btree_cur* %29, i32 %30, i32 %31, i8* %32, i8* %33, i32 %34, i32* %13)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  br label %87

39:                                               ; preds = %6
  %40 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %41 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @done, align 4
  %47 = call i32 @XFS_WANT_CORRUPTED_GOTO(i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %55 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %60 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i8* %58, i8** %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %65 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i8* %63, i8** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %74 = call i32 @xfs_btree_insert(%struct.xfs_btree_cur* %73, i32* %13)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %39
  br label %87

78:                                               ; preds = %39
  %79 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %80 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @done, align 4
  %86 = call i32 @XFS_WANT_CORRUPTED_GOTO(i32 %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %77, %38
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %92 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %95 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @_RET_IP_, align 4
  %101 = call i32 @trace_xfs_rmap_insert_error(i32 %93, i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %90, %87
  %103 = load i32, i32* %14, align 4
  ret i32 %103
}

declare dso_local i32 @trace_xfs_rmap_insert(i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xfs_rmap_lookup_eq(%struct.xfs_btree_cur*, i32, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @XFS_WANT_CORRUPTED_GOTO(i32, i32, i32) #1

declare dso_local i32 @xfs_btree_insert(%struct.xfs_btree_cur*, i32*) #1

declare dso_local i32 @trace_xfs_rmap_insert_error(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
