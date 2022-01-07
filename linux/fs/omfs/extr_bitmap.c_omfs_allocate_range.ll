; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_omfs_allocate_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_omfs_allocate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.omfs_sb_info = type { i32, i32, i32* }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omfs_allocate_range(%struct.super_block* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.omfs_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = call %struct.omfs_sb_info* @OMFS_SB(%struct.super_block* %17)
  store %struct.omfs_sb_info* %18, %struct.omfs_sb_info** %11, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 8, %21
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %11, align 8
  %24 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %77, %5
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %11, align 8
  %29 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %72, %32
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %11, align 8
  %39 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @find_next_zero_bit(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %76

52:                                               ; preds = %37
  %53 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %11, align 8
  %54 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %11, align 8
  %61 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @count_run(i32* %58, i32 %59, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  br label %83

72:                                               ; preds = %52
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %16, align 4
  br label %33

76:                                               ; preds = %51, %33
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %26

80:                                               ; preds = %26
  %81 = load i32, i32* @ENOSPC, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %98

83:                                               ; preds = %71
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  %92 = load %struct.super_block*, %struct.super_block** %6, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @set_run(%struct.super_block* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 1)
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %83, %80
  %99 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %11, align 8
  %100 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %13, align 4
  ret i32 %102
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @count_run(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_run(%struct.super_block*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
