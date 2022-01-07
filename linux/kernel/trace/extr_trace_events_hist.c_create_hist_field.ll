; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_hist_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_hist_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, i8*, i64, %struct.TYPE_2__, %struct.ftrace_event_field*, i32, i32, %struct.hist_field**, %struct.hist_trigger_data* }
%struct.TYPE_2__ = type { i8* }
%struct.hist_trigger_data = type { i32 }
%struct.ftrace_event_field = type { i8*, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HIST_FIELD_FL_EXPR = common dso_local global i64 0, align 8
@HIST_FIELD_FL_ALIAS = common dso_local global i64 0, align 8
@HIST_FIELD_FL_VAR_REF = common dso_local global i64 0, align 8
@hist_field_var_ref = common dso_local global i32 0, align 4
@HIST_FIELD_FL_HITCOUNT = common dso_local global i64 0, align 8
@hist_field_counter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@HIST_FIELD_FL_STACKTRACE = common dso_local global i64 0, align 8
@hist_field_none = common dso_local global i32 0, align 4
@HIST_FIELD_FL_LOG2 = common dso_local global i64 0, align 8
@hist_field_log2 = common dso_local global i32 0, align 4
@HIST_FIELD_FL_TIMESTAMP = common dso_local global i64 0, align 8
@hist_field_timestamp = common dso_local global i32 0, align 4
@HIST_FIELD_FL_CPU = common dso_local global i64 0, align 8
@hist_field_cpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@HIST_FIELD_FL_STRING = common dso_local global i64 0, align 8
@MAX_FILTER_STR_VAL = common dso_local global i32 0, align 4
@FILTER_STATIC_STRING = common dso_local global i64 0, align 8
@hist_field_string = common dso_local global i32 0, align 4
@FILTER_DYN_STRING = common dso_local global i64 0, align 8
@hist_field_dynstring = common dso_local global i32 0, align 4
@hist_field_pstring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.ftrace_event_field*, i64, i8*)* @create_hist_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @create_hist_field(%struct.hist_trigger_data* %0, %struct.ftrace_event_field* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca %struct.ftrace_event_field*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hist_field*, align 8
  %11 = alloca i64, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store %struct.ftrace_event_field* %1, %struct.ftrace_event_field** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %13 = icmp ne %struct.ftrace_event_field* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %16 = call i64 @is_function_field(%struct.ftrace_event_field* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %294

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.hist_field* @kzalloc(i32 64, i32 %20)
  store %struct.hist_field* %21, %struct.hist_field** %10, align 8
  %22 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %23 = icmp ne %struct.hist_field* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %294

25:                                               ; preds = %19
  %26 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %27 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %28 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %27, i32 0, i32 8
  store %struct.hist_trigger_data* %26, %struct.hist_trigger_data** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @HIST_FIELD_FL_EXPR, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @HIST_FIELD_FL_ALIAS, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %25
  br label %266

39:                                               ; preds = %33
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @HIST_FIELD_FL_VAR_REF, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @hist_field_var_ref, align 4
  %46 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %47 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  br label %266

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @HIST_FIELD_FL_HITCOUNT, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load i32, i32* @hist_field_counter, align 4
  %55 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %56 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %58 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %57, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %62 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %64 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  br label %291

68:                                               ; preds = %53
  br label %266

69:                                               ; preds = %48
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @HIST_FIELD_FL_STACKTRACE, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @hist_field_none, align 4
  %76 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %77 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  br label %266

78:                                               ; preds = %69
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @HIST_FIELD_FL_LOG2, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %78
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @HIST_FIELD_FL_LOG2, align 8
  %86 = xor i64 %85, -1
  %87 = and i64 %84, %86
  store i64 %87, i64* %11, align 8
  %88 = load i32, i32* @hist_field_log2, align 4
  %89 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %90 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %92 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call %struct.hist_field* @create_hist_field(%struct.hist_trigger_data* %91, %struct.ftrace_event_field* %92, i64 %93, i8* null)
  %95 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %96 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %95, i32 0, i32 7
  %97 = load %struct.hist_field**, %struct.hist_field*** %96, align 8
  %98 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %97, i64 0
  store %struct.hist_field* %94, %struct.hist_field** %98, align 8
  %99 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %100 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %99, i32 0, i32 7
  %101 = load %struct.hist_field**, %struct.hist_field*** %100, align 8
  %102 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %101, i64 0
  %103 = load %struct.hist_field*, %struct.hist_field** %102, align 8
  %104 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %107 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %109 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %108, i32 0, i32 7
  %110 = load %struct.hist_field**, %struct.hist_field*** %109, align 8
  %111 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %110, i64 0
  %112 = load %struct.hist_field*, %struct.hist_field** %111, align 8
  %113 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @kstrdup(i8* %114, i32 %115)
  %117 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %118 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %120 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %83
  br label %291

124:                                              ; preds = %83
  br label %266

125:                                              ; preds = %78
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load i32, i32* @hist_field_timestamp, align 4
  %132 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %133 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %135 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %134, i32 0, i32 0
  store i32 4, i32* %135, align 8
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @kstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %139 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %141 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %130
  br label %291

145:                                              ; preds = %130
  br label %266

146:                                              ; preds = %125
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* @HIST_FIELD_FL_CPU, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load i32, i32* @hist_field_cpu, align 4
  %153 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %154 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  %155 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %156 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %155, i32 0, i32 0
  store i32 4, i32* %156, align 8
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @kstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %160 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %162 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %151
  br label %291

166:                                              ; preds = %151
  br label %266

167:                                              ; preds = %146
  %168 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %169 = icmp ne %struct.ftrace_event_field* %168, null
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i64 @WARN_ON_ONCE(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %266

175:                                              ; preds = %167
  %176 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %177 = call i64 @is_string_field(%struct.ftrace_event_field* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %224

179:                                              ; preds = %175
  %180 = load i64, i64* @HIST_FIELD_FL_STRING, align 8
  %181 = load i64, i64* %8, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %8, align 8
  %183 = load i32, i32* @MAX_FILTER_STR_VAL, align 4
  %184 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %185 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %187 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call i8* @kstrdup(i8* %188, i32 %189)
  %191 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %192 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %191, i32 0, i32 1
  store i8* %190, i8** %192, align 8
  %193 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %194 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %179
  br label %291

198:                                              ; preds = %179
  %199 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %200 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @FILTER_STATIC_STRING, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* @hist_field_string, align 4
  %206 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %207 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 8
  br label %223

208:                                              ; preds = %198
  %209 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %210 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @FILTER_DYN_STRING, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i32, i32* @hist_field_dynstring, align 4
  %216 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %217 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 8
  br label %222

218:                                              ; preds = %208
  %219 = load i32, i32* @hist_field_pstring, align 4
  %220 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %221 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %218, %214
  br label %223

223:                                              ; preds = %222, %204
  br label %265

224:                                              ; preds = %175
  %225 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %226 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %229 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %231 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %234 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 4
  %235 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %236 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = call i8* @kstrdup(i8* %237, i32 %238)
  %240 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %241 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %243 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %224
  br label %291

247:                                              ; preds = %224
  %248 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %249 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %252 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @select_value_fn(i32 %250, i32 %253)
  %255 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %256 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %255, i32 0, i32 5
  store i32 %254, i32* %256, align 8
  %257 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %258 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %247
  %262 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %263 = call i32 @destroy_hist_field(%struct.hist_field* %262, i32 0)
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %294

264:                                              ; preds = %247
  br label %265

265:                                              ; preds = %264, %223
  br label %266

266:                                              ; preds = %265, %174, %166, %145, %124, %74, %68, %44, %38
  %267 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %268 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %269 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %268, i32 0, i32 4
  store %struct.ftrace_event_field* %267, %struct.ftrace_event_field** %269, align 8
  %270 = load i64, i64* %8, align 8
  %271 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %272 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %271, i32 0, i32 2
  store i64 %270, i64* %272, align 8
  %273 = load i8*, i8** %9, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %289

275:                                              ; preds = %266
  %276 = load i8*, i8** %9, align 8
  %277 = load i32, i32* @GFP_KERNEL, align 4
  %278 = call i8* @kstrdup(i8* %276, i32 %277)
  %279 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %280 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 0
  store i8* %278, i8** %281, align 8
  %282 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %283 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %288, label %287

287:                                              ; preds = %275
  br label %291

288:                                              ; preds = %275
  br label %289

289:                                              ; preds = %288, %266
  %290 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  store %struct.hist_field* %290, %struct.hist_field** %5, align 8
  br label %294

291:                                              ; preds = %287, %246, %197, %165, %144, %123, %67
  %292 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %293 = call i32 @destroy_hist_field(%struct.hist_field* %292, i32 0)
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %294

294:                                              ; preds = %291, %289, %261, %24, %18
  %295 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  ret %struct.hist_field* %295
}

declare dso_local i64 @is_function_field(%struct.ftrace_event_field*) #1

declare dso_local %struct.hist_field* @kzalloc(i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @is_string_field(%struct.ftrace_event_field*) #1

declare dso_local i32 @select_value_fn(i32, i32) #1

declare dso_local i32 @destroy_hist_field(%struct.hist_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
