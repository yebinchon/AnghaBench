; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_timechart__record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_timechart__record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@__const.timechart__record.backtrace_args = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)], align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"power:cpu_frequency\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"power:cpu_idle\00", align 1
@__const.timechart__record.power_args = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [19 x i8] c"sched:sched_wakeup\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"sched:sched_switch\00", align 1
@__const.timechart__record.tasks_args = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)], align 16
@ENOMEM = common dso_local global i32 0, align 4
@use_old_power_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*, i32, i8**)* @timechart__record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timechart__record(%struct.timechart* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timechart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca [5 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca [1 x i8*], align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i8*], align 16
  %19 = alloca i32, align 4
  %20 = alloca [0 x i8*], align 8
  %21 = alloca i32, align 4
  %22 = alloca [4 x i8*], align 16
  %23 = alloca i32, align 4
  store %struct.timechart* %0, %struct.timechart** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %24 = bitcast [5 x i8*]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 40, i1 false)
  %25 = bitcast i8* %24 to [5 x i8*]*
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %27, align 8
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %28, align 16
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %29, align 8
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %30, align 16
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(i8** %31)
  store i32 %32, i32* %15, align 4
  %33 = bitcast [1 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast ([1 x i8*]* @__const.timechart__record.backtrace_args to i8*), i64 8, i1 false)
  %34 = getelementptr inbounds [1 x i8*], [1 x i8*]* %16, i64 0, i64 0
  %35 = call i32 @ARRAY_SIZE(i8** %34)
  store i32 %35, i32* %17, align 4
  %36 = bitcast [4 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 bitcast ([4 x i8*]* @__const.timechart__record.power_args to i8*), i64 32, i1 false)
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i8** %37)
  store i32 %38, i32* %19, align 4
  %39 = bitcast [0 x i8*]* %20 to i8*
  %40 = getelementptr inbounds [0 x i8*], [0 x i8*]* %20, i64 0, i64 0
  %41 = call i32 @ARRAY_SIZE(i8** %40)
  store i32 %41, i32* %21, align 4
  %42 = bitcast [4 x i8*]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 16 bitcast ([4 x i8*]* @__const.timechart__record.tasks_args to i8*), i64 32, i1 false)
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %22, i64 0, i64 0
  %44 = call i32 @ARRAY_SIZE(i8** %43)
  store i32 %44, i32* %23, align 4
  %45 = load %struct.timechart*, %struct.timechart** %5, align 8
  %46 = getelementptr inbounds %struct.timechart, %struct.timechart* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  store i32 0, i32* %23, align 4
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.timechart*, %struct.timechart** %5, align 8
  %52 = getelementptr inbounds %struct.timechart, %struct.timechart* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load %struct.timechart*, %struct.timechart** %5, align 8
  %58 = getelementptr inbounds %struct.timechart, %struct.timechart* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %23, align 4
  %65 = add i32 %63, %64
  %66 = load i32, i32* %19, align 4
  %67 = add i32 %65, %66
  %68 = load i32, i32* %21, align 4
  %69 = add i32 %67, %68
  %70 = load i32, i32* %17, align 4
  %71 = add i32 %69, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %72, %73
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, 1
  %77 = call i8** @calloc(i32 %76, i32 8)
  store i8** %77, i8*** %11, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = icmp eq i8** %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %184

83:                                               ; preds = %62
  %84 = load i8**, i8*** %11, align 8
  store i8** %84, i8*** %12, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %97, %83
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @strdup(i8* %93)
  %95 = load i8**, i8*** %12, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %12, align 8
  store i8* %94, i8** %95, align 8
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %85

100:                                              ; preds = %85
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [1 x i8*], [1 x i8*]* %16, i64 0, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @strdup(i8* %109)
  %111 = load i8**, i8*** %12, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %12, align 8
  store i8* %110, i8** %111, align 8
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %101

116:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %23, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i8*], [4 x i8*]* %22, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @strdup(i8* %125)
  %127 = load i8**, i8*** %12, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %12, align 8
  store i8* %126, i8** %127, align 8
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %117

132:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %145, %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @strdup(i8* %141)
  %143 = load i8**, i8*** %12, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i32 1
  store i8** %144, i8*** %12, align 8
  store i8* %142, i8** %143, align 8
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %133

148:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %161, %148
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %21, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [0 x i8*], [0 x i8*]* %20, i64 0, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @strdup(i8* %157)
  %159 = load i8**, i8*** %12, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i32 1
  store i8** %160, i8*** %12, align 8
  store i8* %158, i8** %159, align 8
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %149

164:                                              ; preds = %149
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %177, %164
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load i8**, i8*** %7, align 8
  %171 = load i32, i32* %10, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %12, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i32 1
  store i8** %176, i8*** %12, align 8
  store i8* %174, i8** %175, align 8
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %10, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %165

180:                                              ; preds = %165
  %181 = load i32, i32* %8, align 4
  %182 = load i8**, i8*** %11, align 8
  %183 = call i32 @cmd_record(i32 %181, i8** %182)
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %180, %80
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @cmd_record(i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
