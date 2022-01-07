; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_balloc.c_sysv_count_free_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_balloc.c_sysv_count_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i64*, i32, i32, i32, i32, i64, i64*, i32* }
%struct.buffer_head = type { i64 }

@FSTYPE_AFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"sysv_count_free_blocks: new block %d is not in data zone\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"sysv_count_free_blocks: cannot read free-list block\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"sysv_count_free_blocks: >flc_size entries in free-list block\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"sysv_count_free_blocks: free block count was %d, correcting to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysv_count_free_blocks(%struct.super_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %12)
  store %struct.sysv_sb_info* %13, %struct.sysv_sb_info** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %14 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %15 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FSTYPE_AFS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %166

20:                                               ; preds = %1
  %21 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %22 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %21, i32 0, i32 5
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %25 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %24, i64 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %31 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %31, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %38 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %37, i32 0, i32 7
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %8, align 8
  br label %40

40:                                               ; preds = %20, %105
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %43 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %139

47:                                               ; preds = %40
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %51, %48
  %60 = phi i1 [ false, %48 ], [ %58, %51 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %48

64:                                               ; preds = %59
  %65 = load i64, i64* %11, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %116

68:                                               ; preds = %64
  %69 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %69, i64 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = icmp ne %struct.buffer_head* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %77 = call i32 @brelse(%struct.buffer_head* %76)
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %81 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %87 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp uge i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %78
  br label %134

91:                                               ; preds = %84
  %92 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %93 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load %struct.super_block*, %struct.super_block** %3, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call %struct.buffer_head* @sb_bread(%struct.super_block* %99, i32 %100)
  store %struct.buffer_head* %101, %struct.buffer_head** %7, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %103 = icmp ne %struct.buffer_head* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %91
  br label %137

105:                                              ; preds = %91
  %106 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %108 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %106, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load %struct.super_block*, %struct.super_block** %3, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %115 = call i64* @get_chunk(%struct.super_block* %113, %struct.buffer_head* %114)
  store i64* %115, i64** %8, align 8
  br label %40

116:                                              ; preds = %67
  %117 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %118 = icmp ne %struct.buffer_head* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %149

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %165, %147, %127
  %129 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %130 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %129, i32 0, i32 5
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %2, align 8
  br label %166

134:                                              ; preds = %90
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %147

137:                                              ; preds = %104
  %138 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %147

139:                                              ; preds = %46
  %140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %141 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %142 = icmp ne %struct.buffer_head* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %145 = call i32 @brelse(%struct.buffer_head* %144)
  br label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %146, %137, %134
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %6, align 4
  br label %128

149:                                              ; preds = %126
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load %struct.super_block*, %struct.super_block** %3, align 8
  %154 = call i32 @sb_rdonly(%struct.super_block* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %149
  %157 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %157, i32 %158)
  %160 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %161 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  store i64 %159, i64* %162, align 8
  %163 = load %struct.super_block*, %struct.super_block** %3, align 8
  %164 = call i32 @dirty_sb(%struct.super_block* %163)
  br label %165

165:                                              ; preds = %156, %149
  br label %128

166:                                              ; preds = %128, %19
  %167 = load i64, i64* %2, align 8
  ret i64 %167
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @fs32_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64* @get_chunk(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i64 @cpu_to_fs32(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
