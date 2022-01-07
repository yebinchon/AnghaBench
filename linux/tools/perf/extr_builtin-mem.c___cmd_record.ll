; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c___cmd_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c___cmd_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_mem = type { i32, i64 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"event selector. use 'perf mem record -e list' to list available events\00", align 1
@parse_record_events = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ldlat\00", align 1
@perf_mem_events__loads_ldlat = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"mem-loads latency\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"be more verbose (show counter open errors, etc)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"all-user\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"collect only user level data\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"all-kernel\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"collect only kernel level data\00", align 1
@record_mem_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@MEM_OPERATION_LOAD = common dso_local global i32 0, align 4
@perf_mem_events = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_MEM_EVENTS__LOAD = common dso_local global i64 0, align 8
@MEM_OPERATION_STORE = common dso_local global i32 0, align 4
@PERF_MEM_EVENTS__STORE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"--phys-data\00", align 1
@PERF_MEM_EVENTS__MAX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"failed: event '%s' not supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"--all-user\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"--all-kernel\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"calling: record \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.perf_mem*)* @__cmd_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_record(i32 %0, i8** %1, %struct.perf_mem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.perf_mem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.perf_mem* %2, %struct.perf_mem** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %15, i64 0, i64 0
  %17 = load i32, i32* @parse_record_events, align 4
  %18 = call i32 @OPT_CALLBACK(i8 signext 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.perf_mem** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 @OPT_UINTEGER(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @perf_mem_events__loads_ldlat, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %24 = call i32 @OPT_INCR(i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64* @verbose, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %27 = call i32 @OPT_BOOLEAN(i8 signext 85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %30 = call i32 @OPT_BOOLEAN(i8 signext 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %33 = call i32 (...) @OPT_END()
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %15, i64 0, i64 0
  %38 = load i32, i32* @record_mem_usage, align 4
  %39 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %40 = call i32 @parse_options(i32 %35, i8** %36, %struct.option* %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 9
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i8** @calloc(i32 %44, i32 8)
  store i8** %45, i8*** %11, align 8
  %46 = load i8**, i8*** %11, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %219

49:                                               ; preds = %3
  %50 = load i8**, i8*** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %56 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MEM_OPERATION_LOAD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %63 = load i64, i64* @PERF_MEM_EVENTS__LOAD, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %49
  %67 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %68 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MEM_OPERATION_STORE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %75 = load i64, i64* @PERF_MEM_EVENTS__STORE, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %66
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %80 = load i64, i64* @PERF_MEM_EVENTS__LOAD, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i8**, i8*** %11, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %90, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i8**, i8*** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %96, align 8
  %97 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %98 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load i8**, i8*** %11, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %91
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %148, %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @PERF_MEM_EVENTS__MAX, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %108
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %148

121:                                              ; preds = %112
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_mem_events, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %10, align 4
  %131 = call i8* @perf_mem_events__name(i32 %130)
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %131)
  %133 = load i8**, i8*** %11, align 8
  %134 = call i32 @free(i8** %133)
  store i32 -1, i32* %4, align 4
  br label %219

135:                                              ; preds = %121
  %136 = load i8**, i8*** %11, align 8
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %140, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i8* @perf_mem_events__name(i32 %141)
  %143 = load i8**, i8*** %11, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8*, i8** %143, i64 %146
  store i8* %142, i8** %147, align 8
  br label %148

148:                                              ; preds = %135, %120
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %108

151:                                              ; preds = %108
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i8**, i8*** %11, align 8
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %159, align 8
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i8**, i8*** %11, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8*, i8** %164, i64 %167
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %168, align 8
  br label %169

169:                                              ; preds = %163, %160
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %184, %169
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load i8**, i8*** %6, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load i8**, i8*** %11, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  store i8* %179, i8** %183, align 8
  br label %184

184:                                              ; preds = %174
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %170

189:                                              ; preds = %170
  %190 = load i64, i64* @verbose, align 8
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %189
  %193 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %194

194:                                              ; preds = %201, %192
  %195 = load i8**, i8*** %11, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load i8**, i8*** %11, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %206)
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %194

210:                                              ; preds = %194
  %211 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %189
  %213 = load i32, i32* %9, align 4
  %214 = load i8**, i8*** %11, align 8
  %215 = call i32 @cmd_record(i32 %213, i8** %214)
  store i32 %215, i32* %12, align 4
  %216 = load i8**, i8*** %11, align 8
  %217 = call i32 @free(i8** %216)
  %218 = load i32, i32* %12, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %212, %129, %48
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @OPT_CALLBACK(i8 signext, i8*, %struct.perf_mem**, i8*, i8*, i32) #1

declare dso_local i32 @OPT_UINTEGER(i32, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_INCR(i8 signext, i8*, i64*, i8*) #1

declare dso_local i32 @OPT_BOOLEAN(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i32, i32) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i8* @perf_mem_events__name(i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @cmd_record(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
