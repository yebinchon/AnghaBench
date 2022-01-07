; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_bitmap.c_xfs_bitmap_set_btcur_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_bitmap.c_xfs_bitmap_set_btcur_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_bitmap = type { i32 }
%struct.xfs_btree_cur = type { i32, i32*, i32 }
%struct.xfs_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bitmap_set_btcur_path(%struct.xfs_bitmap* %0, %struct.xfs_btree_cur* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_bitmap*, align 8
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_bitmap* %0, %struct.xfs_bitmap** %4, align 8
  store %struct.xfs_btree_cur* %1, %struct.xfs_btree_cur** %5, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %13 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br label %25

25:                                               ; preds = %16, %10
  %26 = phi i1 [ false, %10 ], [ %24, %16 ]
  br i1 %26, label %27, label %53

27:                                               ; preds = %25
  %28 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @xfs_btree_get_block(%struct.xfs_btree_cur* %28, i32 %29, %struct.xfs_buf** %6)
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %32 = icmp ne %struct.xfs_buf* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %50

34:                                               ; preds = %27
  %35 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %39 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @XFS_DADDR_TO_FSB(i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.xfs_bitmap*, %struct.xfs_bitmap** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @xfs_bitmap_set(%struct.xfs_bitmap* %42, i32 %43, i32 1)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %10

53:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @xfs_btree_get_block(%struct.xfs_btree_cur*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @XFS_DADDR_TO_FSB(i32, i32) #1

declare dso_local i32 @xfs_bitmap_set(%struct.xfs_bitmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
