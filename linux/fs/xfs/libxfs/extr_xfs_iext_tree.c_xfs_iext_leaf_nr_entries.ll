; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_leaf_nr_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_leaf_nr_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32 }
%struct.xfs_iext_leaf = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_ifork*, %struct.xfs_iext_leaf*, i32)* @xfs_iext_leaf_nr_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_iext_leaf_nr_entries(%struct.xfs_ifork* %0, %struct.xfs_iext_leaf* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_ifork*, align 8
  %5 = alloca %struct.xfs_iext_leaf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %4, align 8
  store %struct.xfs_iext_leaf* %1, %struct.xfs_iext_leaf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.xfs_ifork*, %struct.xfs_ifork** %4, align 8
  %12 = call i32 @xfs_iext_max_recs(%struct.xfs_ifork* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i64 @xfs_iext_rec_is_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %9

28:                                               ; preds = %23, %9
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @xfs_iext_max_recs(%struct.xfs_ifork*) #1

declare dso_local i64 @xfs_iext_rec_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
