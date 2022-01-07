; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_split_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_split_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_iext_leaf = type { %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf*, i32* }
%struct.xfs_iext_cursor = type { i32, %struct.xfs_iext_leaf* }

@NODE_SIZE = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@RECS_PER_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_iext_leaf* (%struct.xfs_iext_cursor*, i32*)* @xfs_iext_split_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_iext_leaf* @xfs_iext_split_leaf(%struct.xfs_iext_cursor* %0, i32* %1) #0 {
  %3 = alloca %struct.xfs_iext_cursor*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfs_iext_leaf*, align 8
  %6 = alloca %struct.xfs_iext_leaf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_iext_cursor* %0, %struct.xfs_iext_cursor** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %10, i32 0, i32 1
  %12 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %11, align 8
  store %struct.xfs_iext_leaf* %12, %struct.xfs_iext_leaf** %5, align 8
  %13 = load i32, i32* @NODE_SIZE, align 4
  %14 = load i32, i32* @KM_NOFS, align 4
  %15 = call %struct.xfs_iext_leaf* @kmem_zalloc(i32 %13, i32 %14)
  store %struct.xfs_iext_leaf* %15, %struct.xfs_iext_leaf** %6, align 8
  %16 = load i32, i32* @RECS_PER_LEAF, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RECS_PER_LEAF, align 4
  %20 = and i32 %19, 1
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RECS_PER_LEAF, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  %29 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %29, i32 0, i32 1
  store %struct.xfs_iext_leaf* %28, %struct.xfs_iext_leaf** %30, align 8
  %31 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  store i32 0, i32* %33, align 4
  br label %88

34:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  %50 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = call i32 @xfs_iext_rec_clear(i32* %62)
  br label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %35

67:                                               ; preds = %35
  %68 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %3, align 8
  %69 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  %75 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %3, align 8
  %76 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %75, i32 0, i32 1
  store %struct.xfs_iext_leaf* %74, %struct.xfs_iext_leaf** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %3, align 8
  %79 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %4, align 8
  store i32 %82, i32* %83, align 4
  br label %87

84:                                               ; preds = %67
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %4, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %73
  br label %88

88:                                               ; preds = %87, %27
  %89 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %90 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %89, i32 0, i32 0
  %91 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %90, align 8
  %92 = icmp ne %struct.xfs_iext_leaf* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  %95 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %96 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %95, i32 0, i32 0
  %97 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %96, align 8
  %98 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %97, i32 0, i32 1
  store %struct.xfs_iext_leaf* %94, %struct.xfs_iext_leaf** %98, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %101 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %100, i32 0, i32 0
  %102 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %101, align 8
  %103 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  %104 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %103, i32 0, i32 0
  store %struct.xfs_iext_leaf* %102, %struct.xfs_iext_leaf** %104, align 8
  %105 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %106 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  %107 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %106, i32 0, i32 1
  store %struct.xfs_iext_leaf* %105, %struct.xfs_iext_leaf** %107, align 8
  %108 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  %109 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %110 = getelementptr inbounds %struct.xfs_iext_leaf, %struct.xfs_iext_leaf* %109, i32 0, i32 0
  store %struct.xfs_iext_leaf* %108, %struct.xfs_iext_leaf** %110, align 8
  %111 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %6, align 8
  ret %struct.xfs_iext_leaf* %111
}

declare dso_local %struct.xfs_iext_leaf* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_iext_rec_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
