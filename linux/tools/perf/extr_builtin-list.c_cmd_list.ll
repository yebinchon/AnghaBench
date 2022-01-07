; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-list.c_cmd_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-list.c_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"raw-dump\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Dump raw events\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@desc_flag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Print extra event descriptions. --no-desc to not print.\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"long-desc\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Print longer event descriptions.\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@details_flag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [85 x i8] c"Print information on the perf event names and expressions used internally by events.\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Enable debugging output\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"perf list [<options>] [hw|sw|cache|tracepoint|pmu|sdt|event_glob]\00", align 1
@__const.cmd_list.list_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"\0AList of pre-defined events (to be used in -e):\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"tracepoint\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@event_symbols_hw = common dso_local global i32 0, align 4
@PERF_COUNT_HW_MAX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@event_symbols_sw = common dso_local global i32 0, align 4
@PERF_COUNT_SW_MAX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"hwcache\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"sdt\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"metric\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"metricgroup\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"metricgroups\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"*%s*\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"Critical: Not enough memory! Trying to continue...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_list(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x %struct.option], align 16
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %15 = call i32 @OPT_BOOLEAN(i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %18 = call i32 @OPT_BOOLEAN(i8 signext 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* @desc_flag, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %21 = call i32 @OPT_BOOLEAN(i8 signext 118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %24 = call i32 @OPT_BOOLEAN(i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* @details_flag, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %27 = call i32 @OPT_INCR(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* @verbose, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %30 = call i32 (...) @OPT_END()
  %31 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_list.list_usage to i8*), i64 16, i1 false)
  %33 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %34 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %35 = call i32 @set_option_flag(%struct.option* %33, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %40 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %41 = call i32 @parse_options(i32 %36, i8** %37, %struct.option* %38, i8** %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = call i32 (...) @setup_pager()
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %2
  %46 = call i64 (...) @pager_in_use()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45, %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @desc_flag, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @details_flag, align 4
  %61 = call i32 @print_events(i8* null, i32 %54, i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %346

62:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %342, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %345

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @print_tracepoint_events(i8* null, i8* null, i32 %76)
  br label %341

78:                                               ; preds = %67
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86, %78
  %95 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %96 = load i32, i32* @event_symbols_hw, align 4
  %97 = load i32, i32* @PERF_COUNT_HW_MAX, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @print_symbol_events(i8* null, i32 %95, i32 %96, i32 %97, i32 %98)
  br label %340

100:                                              ; preds = %86
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %108, %100
  %117 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  %118 = load i32, i32* @event_symbols_sw, align 4
  %119 = load i32, i32* @PERF_COUNT_SW_MAX, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @print_symbol_events(i8* null, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @print_tool_events(i8* null, i32 %122)
  br label %339

124:                                              ; preds = %108
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132, %124
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @print_hwcache_events(i8* null, i32 %141)
  br label %338

143:                                              ; preds = %132
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %143
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @desc_flag, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @details_flag, align 4
  %159 = call i32 @print_pmu_events(i8* null, i32 %152, i32 %156, i32 %157, i32 %158)
  br label %337

160:                                              ; preds = %143
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @print_sdt_events(i8* null, i8* null, i32 %169)
  br label %336

171:                                              ; preds = %160
  %172 = load i8**, i8*** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %171
  %180 = load i8**, i8*** %5, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %179, %171
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @details_flag, align 4
  %190 = call i32 @metricgroup__print(i32 1, i32 0, i8* null, i32 %188, i32 %189)
  br label %335

191:                                              ; preds = %179
  %192 = load i8**, i8*** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %191
  %200 = load i8**, i8*** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @strcmp(i8* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %199, %191
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @details_flag, align 4
  %210 = call i32 @metricgroup__print(i32 0, i32 1, i8* null, i32 %208, i32 %209)
  br label %334

211:                                              ; preds = %199
  %212 = load i8**, i8*** %5, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @strchr(i8* %216, i8 signext 58)
  store i8* %217, i8** %11, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %283

219:                                              ; preds = %211
  %220 = load i8*, i8** %11, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %236

222:                                              ; preds = %219
  %223 = load i8**, i8*** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @desc_flag, align 4
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @details_flag, align 4
  %235 = call i32 @print_events(i8* %227, i32 %228, i32 %232, i32 %233, i32 %234)
  br label %342

236:                                              ; preds = %219
  %237 = load i8*, i8** %11, align 8
  %238 = load i8**, i8*** %5, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = ptrtoint i8* %237 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %13, align 4
  %247 = load i8**, i8*** %5, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = call i8* @strdup(i8* %251)
  store i8* %252, i8** %12, align 8
  %253 = load i8*, i8** %12, align 8
  %254 = icmp eq i8* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %236
  store i32 -1, i32* %3, align 4
  br label %346

256:                                              ; preds = %236
  %257 = load i8*, i8** %12, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i8 0, i8* %260, align 1
  %261 = load i8*, i8** %12, align 8
  %262 = load i8*, i8** %12, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @print_tracepoint_events(i8* %261, i8* %266, i32 %267)
  %269 = load i8*, i8** %12, align 8
  %270 = load i8*, i8** %12, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = getelementptr inbounds i8, i8* %273, i64 1
  %275 = load i32, i32* %7, align 4
  %276 = call i32 @print_sdt_events(i8* %269, i8* %274, i32 %275)
  %277 = load i8*, i8** %12, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* @details_flag, align 4
  %280 = call i32 @metricgroup__print(i32 1, i32 1, i8* %277, i32 %278, i32 %279)
  %281 = load i8*, i8** %12, align 8
  %282 = call i32 @free(i8* %281)
  br label %333

283:                                              ; preds = %211
  %284 = load i8**, i8*** %5, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %284, i64 %286
  %288 = load i8*, i8** %287, align 8
  %289 = call i64 @asprintf(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %288)
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %283
  %292 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0))
  br label %342

293:                                              ; preds = %283
  %294 = load i8*, i8** %12, align 8
  %295 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %296 = load i32, i32* @event_symbols_hw, align 4
  %297 = load i32, i32* @PERF_COUNT_HW_MAX, align 4
  %298 = load i32, i32* %7, align 4
  %299 = call i32 @print_symbol_events(i8* %294, i32 %295, i32 %296, i32 %297, i32 %298)
  %300 = load i8*, i8** %12, align 8
  %301 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  %302 = load i32, i32* @event_symbols_sw, align 4
  %303 = load i32, i32* @PERF_COUNT_SW_MAX, align 4
  %304 = load i32, i32* %7, align 4
  %305 = call i32 @print_symbol_events(i8* %300, i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i8*, i8** %12, align 8
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @print_tool_events(i8* %306, i32 %307)
  %309 = load i8*, i8** %12, align 8
  %310 = load i32, i32* %7, align 4
  %311 = call i32 @print_hwcache_events(i8* %309, i32 %310)
  %312 = load i8*, i8** %12, align 8
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @desc_flag, align 4
  %315 = icmp ne i32 %314, 0
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* @details_flag, align 4
  %320 = call i32 @print_pmu_events(i8* %312, i32 %313, i32 %317, i32 %318, i32 %319)
  %321 = load i8*, i8** %12, align 8
  %322 = load i32, i32* %7, align 4
  %323 = call i32 @print_tracepoint_events(i8* null, i8* %321, i32 %322)
  %324 = load i8*, i8** %12, align 8
  %325 = load i32, i32* %7, align 4
  %326 = call i32 @print_sdt_events(i8* null, i8* %324, i32 %325)
  %327 = load i8*, i8** %12, align 8
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @details_flag, align 4
  %330 = call i32 @metricgroup__print(i32 1, i32 1, i8* %327, i32 %328, i32 %329)
  %331 = load i8*, i8** %12, align 8
  %332 = call i32 @free(i8* %331)
  br label %333

333:                                              ; preds = %293, %256
  br label %334

334:                                              ; preds = %333, %207
  br label %335

335:                                              ; preds = %334, %187
  br label %336

336:                                              ; preds = %335, %168
  br label %337

337:                                              ; preds = %336, %151
  br label %338

338:                                              ; preds = %337, %140
  br label %339

339:                                              ; preds = %338, %116
  br label %340

340:                                              ; preds = %339, %94
  br label %341

341:                                              ; preds = %340, %75
  br label %342

342:                                              ; preds = %341, %291, %222
  %343 = load i32, i32* %6, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %6, align 4
  br label %63

345:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %345, %255, %53
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

declare dso_local i32 @OPT_BOOLEAN(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_INCR(i32, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_option_flag(%struct.option*, i32, i8*, i32) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i8**, i32) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i64 @pager_in_use(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_events(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_tracepoint_events(i8*, i8*, i32) #1

declare dso_local i32 @print_symbol_events(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @print_tool_events(i8*, i32) #1

declare dso_local i32 @print_hwcache_events(i8*, i32) #1

declare dso_local i32 @print_pmu_events(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @print_sdt_events(i8*, i8*, i32) #1

declare dso_local i32 @metricgroup__print(i32, i32, i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
