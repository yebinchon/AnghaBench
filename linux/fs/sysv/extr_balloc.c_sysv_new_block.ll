; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_balloc.c_sysv_new_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_balloc.c_sysv_new_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64*, i32, i32, i32, i32, i32, i8**, i64 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"sysv_new_block: new block %d is not in data zone\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"sysv_new_block: cannot read free-list block\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"sysv_new_block: free-list block with >flc_size entries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysv_new_block(%struct.super_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %10)
  store %struct.sysv_sb_info* %11, %struct.sysv_sb_info** %4, align 8
  %12 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %13 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %12, i32 0, i32 4
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %16 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %17 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %16, i32 0, i32 6
  %18 = load i8**, i8*** %17, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %15, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %131

24:                                               ; preds = %1
  %25 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %131

36:                                               ; preds = %24
  %37 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %37, i64 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %40, i32 %41)
  %43 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %44 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %43, i32 0, i32 6
  %45 = load i8**, i8*** %44, align 8
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %48 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %54 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %36
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %131

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %119

63:                                               ; preds = %60
  %64 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %65 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  %71 = load %struct.super_block*, %struct.super_block** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call %struct.buffer_head* @sb_bread(%struct.super_block* %71, i32 %72)
  store %struct.buffer_head* %73, %struct.buffer_head** %7, align 8
  %74 = icmp ne %struct.buffer_head* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %63
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %78 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %77, i32 1)
  %79 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %80 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %79, i32 0, i32 6
  %81 = load i8**, i8*** %80, align 8
  store i8* %78, i8** %81, align 8
  br label %131

82:                                               ; preds = %63
  %83 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8**
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %83, i8* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %92 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ugt i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %98 = call i32 @brelse(%struct.buffer_head* %97)
  br label %131

99:                                               ; preds = %82
  %100 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %100, i32 %101)
  %103 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %104 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %103, i32 0, i32 6
  %105 = load i8**, i8*** %104, align 8
  store i8* %102, i8** %105, align 8
  %106 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %107 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.super_block*, %struct.super_block** %3, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %111 = call i32 @get_chunk(%struct.super_block* %109, %struct.buffer_head* %110)
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = mul i64 %113, 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memcpy(i64* %108, i32 %111, i32 %115)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %118 = call i32 @brelse(%struct.buffer_head* %117)
  br label %119

119:                                              ; preds = %99, %60
  %120 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %121 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %122 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @fs32_add(%struct.sysv_sb_info* %120, i32 %123, i32 -1)
  %125 = load %struct.super_block*, %struct.super_block** %3, align 8
  %126 = call i32 @dirty_sb(%struct.super_block* %125)
  %127 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %128 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %127, i32 0, i32 4
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i64, i64* %6, align 8
  store i64 %130, i64* %2, align 8
  br label %135

131:                                              ; preds = %95, %75, %57, %35, %23
  %132 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %133 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %132, i32 0, i32 4
  %134 = call i32 @mutex_unlock(i32* %133)
  store i64 0, i64* %2, align 8
  br label %135

135:                                              ; preds = %131, %119
  %136 = load i64, i64* %2, align 8
  ret i64 %136
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i8*) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i8* @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @get_chunk(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @fs32_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
