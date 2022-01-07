; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_prev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_cursor = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@RECS_PER_LEAF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iext_prev(%struct.xfs_ifork* %0, %struct.xfs_iext_cursor* %1) #0 {
  %3 = alloca %struct.xfs_ifork*, align 8
  %4 = alloca %struct.xfs_iext_cursor*, align 8
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %3, align 8
  store %struct.xfs_iext_cursor* %1, %struct.xfs_iext_cursor** %4, align 8
  %5 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RECS_PER_LEAF, align 8
  %19 = icmp sge i64 %17, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ true, %9 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %25 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %26 = call i32 @xfs_iext_last(%struct.xfs_ifork* %24, %struct.xfs_iext_cursor* %25)
  br label %81

27:                                               ; preds = %2
  %28 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RECS_PER_LEAF, align 8
  %38 = icmp sle i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  br label %41

41:                                               ; preds = %70, %27
  br label %42

42:                                               ; preds = %53, %41
  %43 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %48 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %49 = call i64 @xfs_iext_valid(%struct.xfs_ifork* %47, %struct.xfs_iext_cursor* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %81

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %55 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %42, label %58

58:                                               ; preds = %53
  %59 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %60 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %65 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = icmp ne %struct.TYPE_2__* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %72 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %76, i32 0, i32 1
  store %struct.TYPE_2__* %75, %struct.TYPE_2__** %77, align 8
  %78 = load i64, i64* @RECS_PER_LEAF, align 8
  %79 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %80 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %41

81:                                               ; preds = %20, %51, %63, %58
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_iext_last(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

declare dso_local i64 @xfs_iext_valid(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
