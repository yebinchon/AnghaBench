; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_perf_c2c__record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_perf_c2c__record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"event selector. Use 'perf mem record -e list' to list available events\00", align 1
@parse_record_events = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"all-user\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"collect only user level data\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"all-kernel\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"collect only kernel level data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ldlat\00", align 1
@perf_mem_events__loads_ldlat = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"setup mem-loads latency\00", align 1
@c2c_options = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"failed: memory events not supported\0A\00", align 1
@record_mem_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@perf_mem_events = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_MEM_EVENTS__LOAD = common dso_local global i64 0, align 8
@PERF_MEM_EVENTS__STORE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"--phys-data\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"--sample-cpu\00", align 1
@PERF_MEM_EVENTS__MAX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"failed: event '%s' not supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"--all-user\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"--all-kernel\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"calling: \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @perf_c2c__record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_c2c__record(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %14, i64 0, i64 0
  %16 = load i32, i32* @parse_record_events, align 4
  %17 = call i32 @OPT_CALLBACK(i8 signext 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %20 = call i32 @OPT_BOOLEAN(i8 signext 117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %23 = call i32 @OPT_BOOLEAN(i8 signext 107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %26 = call i32 @OPT_UINTEGER(i8 signext 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* @perf_mem_events__loads_ldlat, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %29 = load i32, i32* @c2c_options, align 4
  %30 = call i32 @OPT_PARENT(i32 %29)
  %31 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %33 = call i32 (...) @OPT_END()
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = call i64 (...) @perf_mem_events__init()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %215

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %14, i64 0, i64 0
  %43 = load i32, i32* @record_mem_usage, align 4
  %44 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %45 = call i32 @parse_options(i32 %40, i8** %41, %struct.option* %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 11
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8** @calloc(i32 %49, i32 8)
  store i8** %50, i8*** %9, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %215

54:                                               ; preds = %39
  %55 = load i8**, i8*** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %64 = load i64, i64* @PERF_MEM_EVENTS__LOAD, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %68 = load i64, i64* @PERF_MEM_EVENTS__STORE, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %54
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %73 = load i64, i64* @PERF_MEM_EVENTS__LOAD, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i8**, i8*** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %83, align 8
  br label %84

84:                                               ; preds = %78, %71
  %85 = load i8**, i8*** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %89, align 8
  %90 = load i8**, i8*** %9, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %94, align 8
  %95 = load i8**, i8*** %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %99, align 8
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %144, %84
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @PERF_MEM_EVENTS__MAX, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %104
  br label %144

113:                                              ; preds = %104
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %127)
  %129 = load i8**, i8*** %9, align 8
  %130 = call i32 @free(i8** %129)
  store i32 -1, i32* %3, align 4
  br label %215

131:                                              ; preds = %113
  %132 = load i8**, i8*** %9, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i8* @perf_mem_events__name(i32 %137)
  %139 = load i8**, i8*** %9, align 8
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  store i8* %138, i8** %143, align 8
  br label %144

144:                                              ; preds = %131, %112
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %100

147:                                              ; preds = %100
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i8**, i8*** %9, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8*, i8** %151, i64 %154
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %155, align 8
  br label %156

156:                                              ; preds = %150, %147
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i8**, i8*** %9, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %164, align 8
  br label %165

165:                                              ; preds = %159, %156
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %180, %165
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i8**, i8*** %9, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  store i8* %175, i8** %179, align 8
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %166

185:                                              ; preds = %166
  %186 = load i64, i64* @verbose, align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %185
  %189 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %190

190:                                              ; preds = %197, %188
  %191 = load i8**, i8*** %9, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %190
  %198 = load i8**, i8*** %9, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %202)
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %190

206:                                              ; preds = %190
  %207 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %185
  %209 = load i32, i32* %7, align 4
  %210 = load i8**, i8*** %9, align 8
  %211 = call i32 @cmd_record(i32 %209, i8** %210)
  store i32 %211, i32* %10, align 4
  %212 = load i8**, i8*** %9, align 8
  %213 = call i32 @free(i8** %212)
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %208, %121, %53, %37
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @OPT_CALLBACK(i8 signext, i8*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @OPT_BOOLEAN(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_UINTEGER(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_PARENT(i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i64 @perf_mem_events__init(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i32, i32) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i8* @perf_mem_events__name(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @cmd_record(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
