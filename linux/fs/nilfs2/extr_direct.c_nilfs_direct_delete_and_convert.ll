; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_delete_and_convert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_delete_and_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nilfs_bmap*, i32)*, i32 (%struct.nilfs_bmap*)* }

@NILFS_DIRECT_NBLOCKS = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_direct_delete_and_convert(%struct.nilfs_bmap* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_bmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %17 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nilfs_bmap*, i32)*, i32 (%struct.nilfs_bmap*, i32)** %19, align 8
  %21 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 %20(%struct.nilfs_bmap* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %96

28:                                               ; preds = %5
  %29 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %30 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.nilfs_bmap*)*, i32 (%struct.nilfs_bmap*)** %32, align 8
  %34 = icmp ne i32 (%struct.nilfs_bmap*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %37 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (%struct.nilfs_bmap*)*, i32 (%struct.nilfs_bmap*)** %39, align 8
  %41 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %42 = call i32 %40(%struct.nilfs_bmap* %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %45 = call i32* @nilfs_direct_dptrs(%struct.nilfs_bmap* %44)
  store i32* %45, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %90, %43
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @NILFS_DIRECT_NBLOCKS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %93

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %54
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cpu_to_le64(i32 %71)
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi i32 [ %72, %66 ], [ %74, %73 ]
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %89

83:                                               ; preds = %54, %50
  %84 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %75
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %46

93:                                               ; preds = %46
  %94 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %95 = call i32 @nilfs_direct_init(%struct.nilfs_bmap* %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %26
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32* @nilfs_direct_dptrs(%struct.nilfs_bmap*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_direct_init(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
