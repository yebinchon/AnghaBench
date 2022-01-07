; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_balloc.c_sysv_free_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_balloc.c_sysv_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i32, i32, i32, i32, i32, i8**, i32*, i64 }
%struct.buffer_head = type { i64 }

@FSTYPE_AFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"sysv_free_block: trying to free block not in datazone\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"sysv_free_block: flc_count > flc_size\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"sysv_free_block: getblk() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysv_free_block(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysv_sb_info*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %10)
  store %struct.sysv_sb_info* %11, %struct.sysv_sb_info** %5, align 8
  %12 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FSTYPE_AFS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %140

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %27 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24
  %37 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %140

38:                                               ; preds = %30
  %39 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %39, i32 0, i32 4
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %43 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %43, i32 0, i32 6
  %45 = load i8**, i8*** %44, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %42, i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %50 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ugt i32 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %56 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %55, i32 0, i32 4
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %140

58:                                               ; preds = %38
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %61 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %115

67:                                               ; preds = %64, %58
  %68 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %69 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.super_block*, %struct.super_block** %3, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %75, i32 %76)
  store %struct.buffer_head* %77, %struct.buffer_head** %6, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %79 = icmp ne %struct.buffer_head* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %67
  %81 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %83 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %82, i32 0, i32 4
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %140

85:                                               ; preds = %67
  %86 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.super_block*, %struct.super_block** %3, align 8
  %90 = getelementptr inbounds %struct.super_block, %struct.super_block* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memset(i64 %88, i32 0, i32 %91)
  %93 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %93, i32 %94)
  %96 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %97 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i8**
  store i8* %95, i8** %99, align 8
  %100 = load %struct.super_block*, %struct.super_block** %3, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %102 = call i32 @get_chunk(%struct.super_block* %100, %struct.buffer_head* %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memcpy(i32 %102, i32* %103, i32 %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %110 = call i32 @mark_buffer_dirty(%struct.buffer_head* %109)
  %111 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %112 = call i32 @set_buffer_uptodate(%struct.buffer_head* %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %85, %64
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %118 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %8, align 4
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %116, i32* %123, align 4
  %124 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %124, i32 %125)
  %127 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %128 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %127, i32 0, i32 6
  %129 = load i8**, i8*** %128, align 8
  store i8* %126, i8** %129, align 8
  %130 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %131 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %132 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @fs32_add(%struct.sysv_sb_info* %130, i32 %133, i32 1)
  %135 = load %struct.super_block*, %struct.super_block** %3, align 8
  %136 = call i32 @dirty_sb(%struct.super_block* %135)
  %137 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %138 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %137, i32 0, i32 4
  %139 = call i32 @mutex_unlock(i32* %138)
  br label %140

140:                                              ; preds = %115, %80, %53, %36, %23
  ret void
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @get_chunk(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fs32_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
