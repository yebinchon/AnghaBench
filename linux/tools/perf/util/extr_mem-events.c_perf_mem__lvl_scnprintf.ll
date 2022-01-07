; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__lvl_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__lvl_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@PERF_MEM_LVL_NA = common dso_local global i32 0, align 4
@PERF_MEM_LVL_HIT = common dso_local global i32 0, align 4
@PERF_MEM_LVL_MISS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Remote \00", align 1
@mem_lvl = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@mem_lvlnum = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"L%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" hit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" miss\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_mem__lvl_scnprintf(i8* %0, i64 %1, %struct.mem_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mem_info* %2, %struct.mem_info** %6, align 8
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* @PERF_MEM_LVL_NA, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %16 = icmp ne %struct.mem_info* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %19 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %23, 1
  store i64 %24, i64* %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PERF_MEM_LVL_HIT, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PERF_MEM_LVL_MISS, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @PERF_MEM_LVL_HIT, align 4
  %34 = load i32, i32* @PERF_MEM_LVL_MISS, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %40 = icmp ne %struct.mem_info* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %22
  %42 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %43 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcat(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %47, %41, %22
  store i32 0, i32* %12, align 4
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %91, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = load i8**, i8*** @mem_lvl, align 8
  %59 = call i64 @ARRAY_SIZE(i8** %58)
  %60 = icmp ult i64 %57, %59
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %96

63:                                               ; preds = %61
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %91

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strcat(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i8*, i8** %4, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  %84 = load i8**, i8*** @mem_lvl, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %80, i64 %83, i8* %87)
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %77, %67
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %53

96:                                               ; preds = %61
  %97 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %98 = icmp ne %struct.mem_info* %97, null
  br i1 %98, label %99, label %152

99:                                               ; preds = %96
  %100 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %101 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %99
  %106 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %107 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  %112 = icmp ne i32 %110, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @strcat(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %8, align 8
  br label %118

118:                                              ; preds = %113, %105
  %119 = load i8**, i8*** @mem_lvlnum, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = load i8*, i8** %4, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* %8, align 8
  %131 = sub i64 %129, %130
  %132 = load i8**, i8*** @mem_lvlnum, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %128, i64 %131, i8* %136)
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %8, align 8
  br label %151

140:                                              ; preds = %118
  %141 = load i8*, i8** %4, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %8, align 8
  %146 = sub i64 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %143, i64 %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load i64, i64* %8, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %8, align 8
  br label %151

151:                                              ; preds = %140, %125
  br label %152

152:                                              ; preds = %151, %99, %96
  %153 = load i64, i64* %8, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load i8*, i8** %4, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i64, i64* %5, align 8
  %160 = load i64, i64* %8, align 8
  %161 = sub i64 %159, %160
  %162 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %158, i64 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %8, align 8
  br label %165

165:                                              ; preds = %155, %152
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i8*, i8** %4, align 8
  %170 = load i64, i64* %8, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i64, i64* %5, align 8
  %173 = load i64, i64* %8, align 8
  %174 = sub i64 %172, %173
  %175 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %171, i64 %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i64, i64* %8, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %8, align 8
  br label %178

178:                                              ; preds = %168, %165
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = load i8*, i8** %4, align 8
  %183 = load i64, i64* %8, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  %185 = load i64, i64* %5, align 8
  %186 = load i64, i64* %8, align 8
  %187 = sub i64 %185, %186
  %188 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %184, i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %189 = load i64, i64* %8, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %8, align 8
  br label %191

191:                                              ; preds = %181, %178
  %192 = load i64, i64* %8, align 8
  %193 = trunc i64 %192 to i32
  ret i32 %193
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
