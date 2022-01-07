; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_cursor = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@RECS_PER_LEAF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iext_next(%struct.xfs_ifork* %0, %struct.xfs_iext_cursor* %1) #0 {
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
  %26 = call i32 @xfs_iext_first(%struct.xfs_ifork* %24, %struct.xfs_iext_cursor* %25)
  br label %72

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
  %37 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %38 = call i64 @xfs_iext_max_recs(%struct.xfs_ifork* %37)
  %39 = icmp slt i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %47 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %72

50:                                               ; preds = %27
  %51 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %52 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %53 = call i32 @xfs_iext_valid(%struct.xfs_ifork* %51, %struct.xfs_iext_cursor* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %57 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp ne %struct.TYPE_2__* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %64 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %69 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %68, i32 0, i32 1
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %69, align 8
  %70 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %20, %62, %55, %50, %27
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_iext_first(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

declare dso_local i64 @xfs_iext_max_recs(%struct.xfs_ifork*) #1

declare dso_local i32 @xfs_iext_valid(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
