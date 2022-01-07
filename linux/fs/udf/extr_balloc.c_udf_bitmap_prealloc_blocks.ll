; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_bitmap_prealloc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_bitmap_prealloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.udf_bitmap = type { %struct.buffer_head** }
%struct.buffer_head = type { i32 }
%struct.udf_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.udf_bitmap*, i64, i64, i64)* @udf_bitmap_prealloc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_bitmap_prealloc_blocks(%struct.super_block* %0, %struct.udf_bitmap* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.udf_bitmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.udf_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.udf_bitmap* %1, %struct.udf_bitmap** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %19)
  store %struct.udf_sb_info* %20, %struct.udf_sb_info** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %22 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %25 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %18, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %113

35:                                               ; preds = %5
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %18, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %109, %45
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 32
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 3
  %55 = ashr i32 %50, %54
  store i32 %55, i32* %15, align 4
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = load %struct.udf_bitmap*, %struct.udf_bitmap** %7, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @load_block_bitmap(%struct.super_block* %56, %struct.udf_bitmap* %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %113

63:                                               ; preds = %46
  %64 = load %struct.udf_bitmap*, %struct.udf_bitmap** %7, align 8
  %65 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %64, i32 0, i32 0
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %66, i64 %68
  %70 = load %struct.buffer_head*, %struct.buffer_head** %69, align 8
  store %struct.buffer_head* %70, %struct.buffer_head** %17, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = getelementptr inbounds %struct.super_block, %struct.super_block* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 3
  %76 = srem i32 %71, %75
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %97, %63
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = getelementptr inbounds %struct.super_block, %struct.super_block* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 3
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i64, i64* %10, align 8
  %86 = icmp sgt i64 %85, 0
  br label %87

87:                                               ; preds = %84, %77
  %88 = phi i1 [ false, %77 ], [ %86, %84 ]
  br i1 %88, label %89, label %106

89:                                               ; preds = %87
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @udf_clear_bit(i32 %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %113

97:                                               ; preds = %89
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %77

106:                                              ; preds = %87
  %107 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %108 = call i32 @mark_buffer_dirty(%struct.buffer_head* %107)
  br label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %10, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %46, label %112

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %112, %96, %62, %34
  %114 = load %struct.super_block*, %struct.super_block** %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 0, %116
  %118 = call i32 @udf_add_free_space(%struct.super_block* %114, i64 %115, i32 %117)
  %119 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %120 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %12, align 4
  ret i32 %122
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @load_block_bitmap(%struct.super_block*, %struct.udf_bitmap*, i32) #1

declare dso_local i32 @udf_clear_bit(i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @udf_add_free_space(%struct.super_block*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
