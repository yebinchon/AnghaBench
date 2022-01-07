; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_discard_segments.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_discard_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_discard_segments(%struct.the_nilfs* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bdev_logical_block_size(i32 %21)
  %23 = sdiv i32 %18, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %13, align 8
  br label %25

25:                                               ; preds = %78, %3
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = icmp ult i32* %26, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %25
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %32, i32 %34, i64* %8, i64* %9)
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 %40, %41
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %11, align 8
  br label %77

44:                                               ; preds = %31
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  %54 = add nsw i64 %53, 1
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %11, align 8
  br label %76

57:                                               ; preds = %44
  %58 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %59 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = mul nsw i64 %61, %63
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = mul nsw i64 %65, %67
  %69 = load i32, i32* @GFP_NOFS, align 4
  %70 = call i32 @blkdev_issue_discard(i32 %60, i64 %64, i64 %68, i32 %69, i32 0)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %4, align 4
  br label %100

75:                                               ; preds = %57
  store i64 0, i64* %11, align 8
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76, %38
  br label %78

78:                                               ; preds = %77
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %13, align 8
  br label %25

81:                                               ; preds = %25
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %86 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = mul nsw i64 %88, %90
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = mul nsw i64 %92, %94
  %96 = load i32, i32* @GFP_NOFS, align 4
  %97 = call i32 @blkdev_issue_discard(i32 %87, i64 %91, i64 %95, i32 %96, i32 0)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %84, %81
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %73
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @nilfs_get_segment_range(%struct.the_nilfs*, i32, i64*, i64*) #1

declare dso_local i32 @blkdev_issue_discard(i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
