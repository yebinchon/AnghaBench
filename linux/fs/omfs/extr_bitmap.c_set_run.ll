; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_set_run.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_bitmap.c_set_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.omfs_sb_info = type { i64**, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i32, i32, i32)* @set_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_run(%struct.super_block* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.omfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = call %struct.omfs_sb_info* @OMFS_SB(%struct.super_block* %17)
  store %struct.omfs_sb_info* %18, %struct.omfs_sb_info** %16, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %16, align 8
  %23 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %16, align 8
  %24 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @clus_to_blk(%struct.omfs_sb_info* %22, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call %struct.buffer_head* @sb_bread(%struct.super_block* %21, i64 %29)
  store %struct.buffer_head* %30, %struct.buffer_head** %15, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %32 = icmp ne %struct.buffer_head* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %6
  br label %110

34:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %100, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %105

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %47 = call i32 @mark_buffer_dirty(%struct.buffer_head* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %49 = call i32 @brelse(%struct.buffer_head* %48)
  %50 = load %struct.super_block*, %struct.super_block** %7, align 8
  %51 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %16, align 8
  %52 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %16, align 8
  %53 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @clus_to_blk(%struct.omfs_sb_info* %51, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call %struct.buffer_head* @sb_bread(%struct.super_block* %50, i64 %58)
  store %struct.buffer_head* %59, %struct.buffer_head** %15, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %43
  br label %110

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %16, align 8
  %70 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %69, i32 0, i32 0
  %71 = load i64**, i64*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64*, i64** %71, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @set_bit(i32 %68, i64* %75)
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = call i32 @set_bit(i32 %77, i64* %81)
  br label %99

83:                                               ; preds = %64
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %16, align 8
  %86 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %85, i32 0, i32 0
  %87 = load i64**, i64*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @clear_bit(i32 %84, i64* %91)
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i64*
  %98 = call i32 @clear_bit(i32 %93, i64* %97)
  br label %99

99:                                               ; preds = %83, %67
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %35

105:                                              ; preds = %35
  %106 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %107 = call i32 @mark_buffer_dirty(%struct.buffer_head* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %105, %62, %33
  %111 = load i32, i32* %14, align 4
  ret i32 %111
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i64 @clus_to_blk(%struct.omfs_sb_info*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
