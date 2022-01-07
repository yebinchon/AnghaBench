; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___ftrace_event_enable_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___ftrace_event_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i64, i32, %struct.trace_array*, %struct.trace_event_call* }
%struct.trace_array = type { i32 }
%struct.trace_event_call = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.trace_event_call*, i32, %struct.trace_event_file*)* }

@EVENT_FILE_FL_SOFT_DISABLED = common dso_local global i64 0, align 8
@EVENT_FILE_FL_SOFT_MODE_BIT = common dso_local global i32 0, align 4
@EVENT_FILE_FL_SOFT_MODE = common dso_local global i32 0, align 4
@EVENT_FILE_FL_ENABLED = common dso_local global i32 0, align 4
@EVENT_FILE_FL_ENABLED_BIT = common dso_local global i32 0, align 4
@EVENT_FILE_FL_RECORDED_CMD = common dso_local global i32 0, align 4
@EVENT_FILE_FL_RECORDED_CMD_BIT = common dso_local global i32 0, align 4
@EVENT_FILE_FL_RECORDED_TGID = common dso_local global i32 0, align 4
@EVENT_FILE_FL_RECORDED_TGID_BIT = common dso_local global i32 0, align 4
@TRACE_REG_UNREGISTER = common dso_local global i32 0, align 4
@EVENT_FILE_FL_SOFT_DISABLED_BIT = common dso_local global i32 0, align 4
@TRACE_ITER_RECORD_CMD = common dso_local global i32 0, align 4
@TRACE_ITER_RECORD_TGID = common dso_local global i32 0, align 4
@TRACE_REG_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"event trace: Could not enable event %s\0A\00", align 1
@EVENT_FILE_FL_WAS_ENABLED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_file*, i32, i32)* @__ftrace_event_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ftrace_event_enable_disable(%struct.trace_event_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.trace_event_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_event_call*, align 8
  %8 = alloca %struct.trace_array*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.trace_event_file* %0, %struct.trace_event_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %15 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %14, i32 0, i32 3
  %16 = load %struct.trace_event_call*, %struct.trace_event_call** %15, align 8
  store %struct.trace_event_call* %16, %struct.trace_event_call** %7, align 8
  %17 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %18 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %17, i32 0, i32 2
  %19 = load %struct.trace_array*, %struct.trace_array** %18, align 8
  store %struct.trace_array* %19, %struct.trace_array** %8, align 8
  %20 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %21 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %230 [
    i32 0, label %24
    i32 1, label %127
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %29 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %28, i32 0, i32 1
  %30 = call i32 @atomic_dec_return(i32* %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %230

33:                                               ; preds = %27
  %34 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %35 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EVENT_FILE_FL_SOFT_DISABLED, align 8
  %38 = and i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @EVENT_FILE_FL_SOFT_MODE_BIT, align 4
  %41 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %42 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %41, i32 0, i32 0
  %43 = call i32 @clear_bit(i32 %40, i64* %42)
  br label %54

44:                                               ; preds = %24
  %45 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %46 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @EVENT_FILE_FL_SOFT_MODE, align 4
  %49 = sext i32 %48 to i64
  %50 = and i64 %47, %49
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %44, %33
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %54
  %58 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %59 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @EVENT_FILE_FL_ENABLED, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %60, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %57
  %66 = load i32, i32* @EVENT_FILE_FL_ENABLED_BIT, align 4
  %67 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %68 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %67, i32 0, i32 0
  %69 = call i32 @clear_bit(i32 %66, i64* %68)
  %70 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %71 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @EVENT_FILE_FL_RECORDED_CMD, align 4
  %74 = sext i32 %73 to i64
  %75 = and i64 %72, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = call i32 (...) @tracing_stop_cmdline_record()
  %79 = load i32, i32* @EVENT_FILE_FL_RECORDED_CMD_BIT, align 4
  %80 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %81 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %80, i32 0, i32 0
  %82 = call i32 @clear_bit(i32 %79, i64* %81)
  br label %83

83:                                               ; preds = %77, %65
  %84 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %85 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @EVENT_FILE_FL_RECORDED_TGID, align 4
  %88 = sext i32 %87 to i64
  %89 = and i64 %86, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = call i32 (...) @tracing_stop_tgid_record()
  %93 = load i32, i32* @EVENT_FILE_FL_RECORDED_TGID_BIT, align 4
  %94 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %95 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %94, i32 0, i32 0
  %96 = call i32 @clear_bit(i32 %93, i64* %95)
  br label %97

97:                                               ; preds = %91, %83
  %98 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %99 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.trace_event_call*, i32, %struct.trace_event_file*)*, i32 (%struct.trace_event_call*, i32, %struct.trace_event_file*)** %101, align 8
  %103 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %104 = load i32, i32* @TRACE_REG_UNREGISTER, align 4
  %105 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %106 = call i32 %102(%struct.trace_event_call* %103, i32 %104, %struct.trace_event_file* %105)
  br label %107

107:                                              ; preds = %97, %57, %54
  %108 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %109 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @EVENT_FILE_FL_SOFT_MODE, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %110, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i32, i32* @EVENT_FILE_FL_SOFT_DISABLED_BIT, align 4
  %117 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %118 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %117, i32 0, i32 0
  %119 = bitcast i64* %118 to i32*
  %120 = call i32 @set_bit(i32 %116, i32* %119)
  br label %126

121:                                              ; preds = %107
  %122 = load i32, i32* @EVENT_FILE_FL_SOFT_DISABLED_BIT, align 4
  %123 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %124 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %123, i32 0, i32 0
  %125 = call i32 @clear_bit(i32 %122, i64* %124)
  br label %126

126:                                              ; preds = %121, %115
  br label %230

127:                                              ; preds = %3
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @EVENT_FILE_FL_SOFT_DISABLED_BIT, align 4
  %132 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %133 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %132, i32 0, i32 0
  %134 = call i32 @clear_bit(i32 %131, i64* %133)
  br label %147

135:                                              ; preds = %127
  %136 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %137 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %136, i32 0, i32 1
  %138 = call i32 @atomic_inc_return(i32* %137)
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %230

141:                                              ; preds = %135
  %142 = load i32, i32* @EVENT_FILE_FL_SOFT_MODE_BIT, align 4
  %143 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %144 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %143, i32 0, i32 0
  %145 = bitcast i64* %144 to i32*
  %146 = call i32 @set_bit(i32 %142, i32* %145)
  br label %147

147:                                              ; preds = %141, %130
  %148 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %149 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @EVENT_FILE_FL_ENABLED, align 4
  %152 = sext i32 %151 to i64
  %153 = and i64 %150, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %229, label %155

155:                                              ; preds = %147
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* @EVENT_FILE_FL_SOFT_DISABLED_BIT, align 4
  %160 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %161 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %160, i32 0, i32 0
  %162 = bitcast i64* %161 to i32*
  %163 = call i32 @set_bit(i32 %159, i32* %162)
  br label %164

164:                                              ; preds = %158, %155
  %165 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  %166 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TRACE_ITER_RECORD_CMD, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  store i32 1, i32* %12, align 4
  %172 = call i32 (...) @tracing_start_cmdline_record()
  %173 = load i32, i32* @EVENT_FILE_FL_RECORDED_CMD_BIT, align 4
  %174 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %175 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %174, i32 0, i32 0
  %176 = bitcast i64* %175 to i32*
  %177 = call i32 @set_bit(i32 %173, i32* %176)
  br label %178

178:                                              ; preds = %171, %164
  %179 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  %180 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @TRACE_ITER_RECORD_TGID, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  store i32 1, i32* %13, align 4
  %186 = call i32 (...) @tracing_start_tgid_record()
  %187 = load i32, i32* @EVENT_FILE_FL_RECORDED_TGID_BIT, align 4
  %188 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %189 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %188, i32 0, i32 0
  %190 = bitcast i64* %189 to i32*
  %191 = call i32 @set_bit(i32 %187, i32* %190)
  br label %192

192:                                              ; preds = %185, %178
  %193 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %194 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32 (%struct.trace_event_call*, i32, %struct.trace_event_file*)*, i32 (%struct.trace_event_call*, i32, %struct.trace_event_file*)** %196, align 8
  %198 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %199 = load i32, i32* @TRACE_REG_REGISTER, align 4
  %200 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %201 = call i32 %197(%struct.trace_event_call* %198, i32 %199, %struct.trace_event_file* %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %192
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = call i32 (...) @tracing_stop_cmdline_record()
  br label %209

209:                                              ; preds = %207, %204
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = call i32 (...) @tracing_stop_tgid_record()
  br label %214

214:                                              ; preds = %212, %209
  %215 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %216 = call i32 @trace_event_name(%struct.trace_event_call* %215)
  %217 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %216)
  br label %230

218:                                              ; preds = %192
  %219 = load i32, i32* @EVENT_FILE_FL_ENABLED_BIT, align 4
  %220 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %221 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %220, i32 0, i32 0
  %222 = bitcast i64* %221 to i32*
  %223 = call i32 @set_bit(i32 %219, i32* %222)
  %224 = load i32, i32* @EVENT_FILE_FL_WAS_ENABLED_BIT, align 4
  %225 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %226 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %225, i32 0, i32 0
  %227 = bitcast i64* %226 to i32*
  %228 = call i32 @set_bit(i32 %224, i32* %227)
  br label %229

229:                                              ; preds = %218, %147
  br label %230

230:                                              ; preds = %3, %229, %214, %140, %126, %32
  %231 = load i64, i64* %9, align 8
  %232 = load i64, i64* @EVENT_FILE_FL_SOFT_DISABLED, align 8
  %233 = and i64 %231, %232
  %234 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %235 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @EVENT_FILE_FL_SOFT_DISABLED, align 8
  %238 = and i64 %236, %237
  %239 = icmp ne i64 %233, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %230
  %241 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %242 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @EVENT_FILE_FL_SOFT_DISABLED, align 8
  %245 = and i64 %243, %244
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = call i32 (...) @trace_buffered_event_enable()
  br label %251

249:                                              ; preds = %240
  %250 = call i32 (...) @trace_buffered_event_disable()
  br label %251

251:                                              ; preds = %249, %247
  br label %252

252:                                              ; preds = %251, %230
  %253 = load i32, i32* %10, align 4
  ret i32 %253
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @tracing_stop_cmdline_record(...) #1

declare dso_local i32 @tracing_stop_tgid_record(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @tracing_start_cmdline_record(...) #1

declare dso_local i32 @tracing_start_tgid_record(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @trace_event_name(%struct.trace_event_call*) #1

declare dso_local i32 @trace_buffered_event_enable(...) #1

declare dso_local i32 @trace_buffered_event_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
