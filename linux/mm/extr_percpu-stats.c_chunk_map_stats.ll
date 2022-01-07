; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu-stats.c_chunk_map_stats.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu-stats.c_chunk_map_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pcpu_chunk = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.pcpu_block_md }
%struct.pcpu_block_md = type { i32, i32 }

@PCPU_MIN_ALLOC_SIZE = common dso_local global i32 0, align 4
@cmpint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nr_alloc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"max_alloc_size\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"empty_pop_pages\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"first_bit\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"free_bytes\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"contig_bytes\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sum_frag\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"max_frag\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"cur_min_alloc\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"cur_med_alloc\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"cur_max_alloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pcpu_chunk*, i32*)* @chunk_map_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_map_stats(%struct.seq_file* %0, %struct.pcpu_chunk* %1, i32* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.pcpu_chunk*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pcpu_block_md*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.pcpu_chunk* %1, %struct.pcpu_chunk** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %20, i32 0, i32 8
  store %struct.pcpu_block_md* %21, %struct.pcpu_block_md** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %13, align 8
  %23 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %24 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %27 = call i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* %26)
  %28 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %29 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PCPU_MIN_ALLOC_SIZE, align 4
  %32 = sdiv i32 %30, %31
  %33 = sub nsw i32 %27, %32
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @find_last_bit(i32 %25, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %38 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @test_bit(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  br label %46

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  store i32 %47, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %48 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %49 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCPU_MIN_ALLOC_SIZE, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %88, %46
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %60 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @test_bit(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %66 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @find_next_bit(i32 %67, i32 %68, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 1, i32* %75, align 4
  br label %88

76:                                               ; preds = %57
  %77 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %78 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @find_next_bit(i32 %79, i32 %80, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 -1, i32* %87, align 4
  br label %88

88:                                               ; preds = %76, %64
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* @PCPU_MIN_ALLOC_SIZE, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, %93
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %11, align 4
  br label %53

102:                                              ; preds = %53
  %103 = load i32, i32* %10, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %157

105:                                              ; preds = %102
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @cmpint, align 4
  %109 = call i32 @sort(i32* %106, i32 %107, i32 4, i32 %108, i32* null)
  store i32 0, i32* %8, align 4
  %110 = load i32*, i32** %13, align 8
  store i32* %110, i32** %14, align 8
  br label %111

111:                                              ; preds = %131, %105
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %116, %117
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i1 [ false, %111 ], [ %118, %115 ]
  br i1 %120, label %121, label %136

121:                                              ; preds = %119
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 -1, %128
  %130 = call i32 @max(i32 %126, i32 %129)
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %14, align 8
  br label %111

136:                                              ; preds = %119
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %17, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %143, %144
  %146 = sub nsw i32 %145, 1
  %147 = sdiv i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %18, align 4
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %136, %102
  %158 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %159 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @P(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %160)
  %162 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %163 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @P(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %167 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @P(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %7, align 8
  %171 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @P(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  %174 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %175 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @P(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %7, align 8
  %179 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @PCPU_MIN_ALLOC_SIZE, align 4
  %182 = mul nsw i32 %180, %181
  %183 = call i32 @P(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @P(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @P(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @P(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @P(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %19, align 4
  %193 = call i32 @P(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %192)
  %194 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %195 = call i32 @seq_putc(%struct.seq_file* %194, i8 signext 10)
  ret void
}

declare dso_local i32 @find_last_bit(i32, i32) #1

declare dso_local i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @sort(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @P(i8*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
