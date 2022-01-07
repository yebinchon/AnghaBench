; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_lookup_extent_before.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_lookup_extent_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_cursor = type { i32 }
%struct.xfs_bmbt_irec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iext_lookup_extent_before(%struct.xfs_inode* %0, %struct.xfs_ifork* %1, i32* %2, %struct.xfs_iext_cursor* %3, %struct.xfs_bmbt_irec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_ifork*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_iext_cursor*, align 8
  %11 = alloca %struct.xfs_bmbt_irec*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store %struct.xfs_ifork* %1, %struct.xfs_ifork** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.xfs_iext_cursor* %3, %struct.xfs_iext_cursor** %10, align 8
  store %struct.xfs_bmbt_irec* %4, %struct.xfs_bmbt_irec** %11, align 8
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %13 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %18 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %11, align 8
  %19 = call i64 @xfs_iext_lookup_extent(%struct.xfs_inode* %12, %struct.xfs_ifork* %13, i32 %16, %struct.xfs_iext_cursor* %17, %struct.xfs_bmbt_irec* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %11, align 8
  %23 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %46

30:                                               ; preds = %21, %5
  %31 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %32 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %10, align 8
  %33 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %11, align 8
  %34 = call i32 @xfs_iext_prev_extent(%struct.xfs_ifork* %31, %struct.xfs_iext_cursor* %32, %struct.xfs_bmbt_irec* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %11, align 8
  %39 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %11, align 8
  %42 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %37, %36, %29
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @xfs_iext_lookup_extent(%struct.xfs_inode*, %struct.xfs_ifork*, i32, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_iext_prev_extent(%struct.xfs_ifork*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
