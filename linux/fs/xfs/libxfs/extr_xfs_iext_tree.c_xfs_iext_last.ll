; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_last.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_cursor = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iext_last(%struct.xfs_ifork* %0, %struct.xfs_iext_cursor* %1) #0 {
  %3 = alloca %struct.xfs_ifork*, align 8
  %4 = alloca %struct.xfs_iext_cursor*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %3, align 8
  store %struct.xfs_iext_cursor* %1, %struct.xfs_iext_cursor** %4, align 8
  %6 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %7 = call %struct.TYPE_2__* @xfs_iext_find_last_leaf(%struct.xfs_ifork* %6)
  %8 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %8, i32 0, i32 1
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %44

17:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %21 = call i32 @xfs_iext_max_recs(%struct.xfs_ifork* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i64 @xfs_iext_rec_is_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %18

39:                                               ; preds = %34, %18
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %14
  ret void
}

declare dso_local %struct.TYPE_2__* @xfs_iext_find_last_leaf(%struct.xfs_ifork*) #1

declare dso_local i32 @xfs_iext_max_recs(%struct.xfs_ifork*) #1

declare dso_local i64 @xfs_iext_rec_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
