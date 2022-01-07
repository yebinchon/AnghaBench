; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, i32, i64* }

@XFS_BTREE_OVERLAPPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_btree_delete(%struct.xfs_btree_cur* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_btree_cur*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @xfs_btree_delrec(%struct.xfs_btree_cur* %14, i32 %15, i32* %8)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %80

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XFS_BTREE_OVERLAPPING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %40 = call i32 @xfs_btree_updkeys_force(%struct.xfs_btree_cur* %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %80

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %31, %28
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %57 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @xfs_btree_decrement(%struct.xfs_btree_cur* %65, i32 %66, i32* %8)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %80

71:                                               ; preds = %64
  br label %76

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %49

76:                                               ; preds = %71, %49
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i32, i32* %8, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %82

80:                                               ; preds = %70, %43, %19
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @xfs_btree_delrec(%struct.xfs_btree_cur*, i32, i32*) #1

declare dso_local i32 @xfs_btree_updkeys_force(%struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @xfs_btree_decrement(%struct.xfs_btree_cur*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
