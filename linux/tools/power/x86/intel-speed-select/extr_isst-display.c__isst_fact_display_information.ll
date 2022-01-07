; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c__isst_fact_display_information.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c__isst_fact_display_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_fact_info = type { i32, i32, i32, %struct.isst_fact_bucket_info* }
%struct.isst_fact_bucket_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"speed-select-turbo-freq\00", align 1
@ISST_FACT_MAX_BUCKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bucket-%d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"high-priority-cores-count\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"high-priority-max-frequency(MHz)\00", align 1
@DISP_FREQ_MULTIPLIER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"high-priority-max-avx2-frequency(MHz)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"high-priority-max-avx512-frequency(MHz)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"speed-select-turbo-freq-clip-frequencies\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"low-priority-max-frequency(MHz)\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"low-priority-max-avx2-frequency(MHz)\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"low-priority-max-avx512-frequency(MHz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32, %struct.isst_fact_info*, i32)* @_isst_fact_display_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_isst_fact_display_information(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, %struct.isst_fact_info* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.isst_fact_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.isst_fact_bucket_info*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca [256 x i8], align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.isst_fact_info* %5, %struct.isst_fact_info** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.isst_fact_info*, %struct.isst_fact_info** %13, align 8
  %20 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %19, i32 0, i32 3
  %21 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %20, align 8
  store %struct.isst_fact_bucket_info* %21, %struct.isst_fact_bucket_info** %15, align 8
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %14, align 4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %27 = call i32 @format_and_print(i32* %24, i32 %25, i8* %26, i8* null)
  store i32 0, i32* %18, align 4
  br label %28

28:                                               ; preds = %143, %7
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* @ISST_FACT_MAX_BUCKETS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %146

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 255
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %143

40:                                               ; preds = %35, %32
  %41 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %15, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %41, i64 %43
  %45 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %146

49:                                               ; preds = %40
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %51 = load i32, i32* %18, align 4
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %57 = call i32 @format_and_print(i32* %53, i32 %55, i8* %56, i8* null)
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %58, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %61 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %15, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %61, i64 %63
  %65 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %60, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 2
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %73 = call i32 @format_and_print(i32* %68, i32 %70, i8* %71, i8* %72)
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %49
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %79 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %81 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %15, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %81, i64 %83
  %85 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 2
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %95 = call i32 @format_and_print(i32* %90, i32 %92, i8* %93, i8* %94)
  br label %96

96:                                               ; preds = %77, %49
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, 2
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 256, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %104 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %15, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %104, i64 %106
  %108 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %111 = mul nsw i32 %109, %110
  %112 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %103, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 2
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %118 = call i32 @format_and_print(i32* %113, i32 %115, i8* %116, i8* %117)
  br label %119

119:                                              ; preds = %100, %96
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %120, 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %119
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %125 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %124, i32 256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %127 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %15, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %127, i64 %129
  %131 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %134 = mul nsw i32 %132, %133
  %135 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %126, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 2
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %141 = call i32 @format_and_print(i32* %136, i32 %138, i8* %139, i8* %140)
  br label %142

142:                                              ; preds = %123, %119
  br label %143

143:                                              ; preds = %142, %39
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %18, align 4
  br label %28

146:                                              ; preds = %48, %28
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %148 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %147, i32 256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %153 = call i32 @format_and_print(i32* %149, i32 %151, i8* %152, i8* null)
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %155 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %154, i32 256, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %157 = load %struct.isst_fact_info*, %struct.isst_fact_info** %13, align 8
  %158 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %161 = mul nsw i32 %159, %160
  %162 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %156, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 2
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %168 = call i32 @format_and_print(i32* %163, i32 %165, i8* %166, i8* %167)
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %170 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %169, i32 256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %172 = load %struct.isst_fact_info*, %struct.isst_fact_info** %13, align 8
  %173 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %176 = mul nsw i32 %174, %175
  %177 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %171, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 2
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %183 = call i32 @format_and_print(i32* %178, i32 %180, i8* %181, i8* %182)
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %185 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %184, i32 256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %187 = load %struct.isst_fact_info*, %struct.isst_fact_info** %13, align 8
  %188 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %191 = mul nsw i32 %189, %190
  %192 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %186, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %191)
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 2
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %198 = call i32 @format_and_print(i32* %193, i32 %195, i8* %196, i8* %197)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @format_and_print(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
