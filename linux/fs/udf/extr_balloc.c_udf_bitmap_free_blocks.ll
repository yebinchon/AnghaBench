; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_bitmap_free_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_bitmap_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.udf_bitmap = type { %struct.buffer_head** }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i64, i64 }
%struct.udf_sb_info = type { i32, i32, %struct.udf_part_map* }
%struct.udf_part_map = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"%u < %d || %u + %u > %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"bit %lu already set\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"byte=%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.udf_bitmap*, %struct.kernel_lb_addr*, i64, i64)* @udf_bitmap_free_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_bitmap_free_blocks(%struct.super_block* %0, %struct.udf_bitmap* %1, %struct.kernel_lb_addr* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.udf_bitmap*, align 8
  %8 = alloca %struct.kernel_lb_addr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.udf_sb_info*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.udf_part_map*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.udf_bitmap* %1, %struct.udf_bitmap** %7, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %20)
  store %struct.udf_sb_info* %21, %struct.udf_sb_info** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %22 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %23 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %26 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %25, i32 0, i32 2
  %27 = load %struct.udf_part_map*, %struct.udf_part_map** %26, align 8
  %28 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %29 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %27, i64 %30
  store %struct.udf_part_map* %31, %struct.udf_part_map** %13, align 8
  %32 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %33 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %5
  %40 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %41 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.udf_part_map*, %struct.udf_part_map** %13, align 8
  %46 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %39, %5
  %50 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %51 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %54 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.udf_part_map*, %struct.udf_part_map** %13, align 8
  %58 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, i64, ...) @udf_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %52, i32 0, i64 %55, i64 %56, i64 %59)
  br label %175

61:                                               ; preds = %39
  %62 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %63 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %64, %65
  %67 = add i64 %66, 32
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %171, %61
  store i64 0, i64* %19, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 3
  %74 = zext i32 %73 to i64
  %75 = lshr i64 %69, %74
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = urem i64 %76, %81
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.super_block*, %struct.super_block** %6, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = icmp ugt i64 %85, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %68
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.super_block*, %struct.super_block** %6, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = sub i64 %95, %100
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %10, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %92, %68
  %106 = load %struct.super_block*, %struct.super_block** %6, align 8
  %107 = load %struct.udf_bitmap*, %struct.udf_bitmap** %7, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @load_block_bitmap(%struct.super_block* %106, %struct.udf_bitmap* %107, i64 %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %175

113:                                              ; preds = %105
  %114 = load %struct.udf_bitmap*, %struct.udf_bitmap** %7, align 8
  %115 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %114, i32 0, i32 0
  %116 = load %struct.buffer_head**, %struct.buffer_head*** %115, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %116, i64 %118
  %120 = load %struct.buffer_head*, %struct.buffer_head** %119, align 8
  store %struct.buffer_head* %120, %struct.buffer_head** %12, align 8
  store i64 0, i64* %17, align 8
  br label %121

121:                                              ; preds = %151, %113
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %10, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %154

125:                                              ; preds = %121
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %17, align 8
  %128 = add i64 %126, %127
  %129 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %130 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @udf_set_bit(i64 %128, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %125
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %17, align 8
  %137 = add i64 %135, %136
  %138 = call i32 (i8*, i64, ...) @udf_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %137)
  %139 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %140 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i64*
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* %17, align 8
  %145 = add i64 %143, %144
  %146 = lshr i64 %145, 3
  %147 = getelementptr inbounds i64, i64* %142, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (i8*, i64, ...) @udf_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %134, %125
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %17, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %17, align 8
  br label %121

154:                                              ; preds = %121
  %155 = load %struct.super_block*, %struct.super_block** %6, align 8
  %156 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %157 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @udf_add_free_space(%struct.super_block* %155, i32 %158, i64 %159)
  %161 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %162 = call i32 @mark_buffer_dirty(%struct.buffer_head* %161)
  %163 = load i64, i64* %19, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* %14, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %14, align 8
  %169 = load i64, i64* %19, align 8
  store i64 %169, i64* %10, align 8
  br label %170

170:                                              ; preds = %165, %154
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %19, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %68, label %174

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %174, %112, %49
  %176 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %177 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udf_debug(i8*, i64, ...) #1

declare dso_local i32 @load_block_bitmap(%struct.super_block*, %struct.udf_bitmap*, i64) #1

declare dso_local i64 @udf_set_bit(i64, i64) #1

declare dso_local i32 @udf_add_free_space(%struct.super_block*, i32, i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
