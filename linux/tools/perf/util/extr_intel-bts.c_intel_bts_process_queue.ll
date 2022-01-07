; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts_queue = type { i32, i32, i64, %struct.TYPE_8__*, %struct.auxtrace_buffer*, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32 }
%struct.auxtrace_buffer = type { i32, i64, i64, i32 }
%struct.thread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts_queue*, i32*)* @intel_bts_process_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_process_queue(%struct.intel_bts_queue* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_bts_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.auxtrace_buffer*, align 8
  %7 = alloca %struct.auxtrace_buffer*, align 8
  %8 = alloca %struct.auxtrace_queue*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_bts_queue* %0, %struct.intel_bts_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %13 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %12, i32 0, i32 4
  %14 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %13, align 8
  store %struct.auxtrace_buffer* %14, %struct.auxtrace_buffer** %6, align 8
  %15 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  store %struct.auxtrace_buffer* %15, %struct.auxtrace_buffer** %7, align 8
  %16 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %17 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %239

21:                                               ; preds = %2
  %22 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %23 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %28 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %33 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.thread* @machine__find_thread(i32 %31, i32 -1, i32 %34)
  store %struct.thread* %35, %struct.thread** %9, align 8
  %36 = load %struct.thread*, %struct.thread** %9, align 8
  %37 = icmp ne %struct.thread* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.thread*, %struct.thread** %9, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %43 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %26
  br label %58

45:                                               ; preds = %21
  %46 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %47 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %52 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %55 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.thread* @machine__findnew_thread(i32 %50, i32 %53, i32 %56)
  store %struct.thread* %57, %struct.thread** %9, align 8
  br label %58

58:                                               ; preds = %45, %44
  %59 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %60 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %59, i32 0, i32 3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %63, align 8
  %65 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %66 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %64, i64 %67
  store %struct.auxtrace_queue* %68, %struct.auxtrace_queue** %8, align 8
  %69 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %70 = icmp ne %struct.auxtrace_buffer* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %58
  %72 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %73 = call i8* @auxtrace_buffer__next(%struct.auxtrace_queue* %72, %struct.auxtrace_buffer* null)
  %74 = bitcast i8* %73 to %struct.auxtrace_buffer*
  store %struct.auxtrace_buffer* %74, %struct.auxtrace_buffer** %6, align 8
  br label %75

75:                                               ; preds = %71, %58
  %76 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %77 = icmp ne %struct.auxtrace_buffer* %76, null
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %80 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %79, i32 0, i32 3
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %87 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %78
  store i32 1, i32* %10, align 4
  br label %235

89:                                               ; preds = %75
  %90 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %91 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %235

97:                                               ; preds = %89
  %98 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %99 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %97
  %103 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %104 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %103, i32 0, i32 3
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @perf_data__fd(i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @auxtrace_buffer__get_data(%struct.auxtrace_buffer* %111, i32 %112)
  %114 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %115 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %117 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %102
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %235

123:                                              ; preds = %102
  br label %124

124:                                              ; preds = %123, %97
  %125 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %126 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %125, i32 0, i32 3
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %133 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %138 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %139 = call i64 @intel_bts_do_fix_overlap(%struct.auxtrace_queue* %137, %struct.auxtrace_buffer* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %10, align 4
  br label %235

144:                                              ; preds = %136, %131, %124
  %145 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %146 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %145, i32 0, i32 3
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %195, label %152

152:                                              ; preds = %144
  %153 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %154 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %195, label %160

160:                                              ; preds = %152
  %161 = load %struct.thread*, %struct.thread** %9, align 8
  %162 = icmp ne %struct.thread* %161, null
  br i1 %162, label %163, label %195

163:                                              ; preds = %160
  %164 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %165 = icmp ne %struct.auxtrace_buffer* %164, null
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %168 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %167, i32 0, i32 3
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %166
  %174 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %175 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %174, i32 0, i32 3
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %173
  %181 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %182 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %180, %166, %163
  %186 = load %struct.thread*, %struct.thread** %9, align 8
  %187 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %188 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %191 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  %194 = call i32 @thread_stack__set_trace_nr(%struct.thread* %186, i32 %189, i64 %193)
  br label %195

195:                                              ; preds = %185, %180, %173, %160, %152, %144
  %196 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %197 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %198 = load %struct.thread*, %struct.thread** %9, align 8
  %199 = call i32 @intel_bts_process_buffer(%struct.intel_bts_queue* %196, %struct.auxtrace_buffer* %197, %struct.thread* %198)
  store i32 %199, i32* %10, align 4
  %200 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %201 = call i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer* %200)
  %202 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %203 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %204 = call i8* @auxtrace_buffer__next(%struct.auxtrace_queue* %202, %struct.auxtrace_buffer* %203)
  %205 = bitcast i8* %204 to %struct.auxtrace_buffer*
  %206 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %207 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %206, i32 0, i32 4
  store %struct.auxtrace_buffer* %205, %struct.auxtrace_buffer** %207, align 8
  %208 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %209 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %208, i32 0, i32 4
  %210 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %209, align 8
  %211 = icmp ne %struct.auxtrace_buffer* %210, null
  br i1 %211, label %212, label %223

212:                                              ; preds = %195
  %213 = load i32*, i32** %5, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %217 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %216, i32 0, i32 4
  %218 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %217, align 8
  %219 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32*, i32** %5, align 8
  store i32 %220, i32* %221, align 4
  br label %222

222:                                              ; preds = %215, %212
  br label %234

223:                                              ; preds = %195
  %224 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %225 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %224, i32 0, i32 3
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %223
  %231 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %232 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  br label %233

233:                                              ; preds = %230, %223
  br label %234

234:                                              ; preds = %233, %222
  br label %235

235:                                              ; preds = %234, %141, %120, %94, %88
  %236 = load %struct.thread*, %struct.thread** %9, align 8
  %237 = call i32 @thread__put(%struct.thread* %236)
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %20
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local %struct.thread* @machine__find_thread(i32, i32, i32) #1

declare dso_local %struct.thread* @machine__findnew_thread(i32, i32, i32) #1

declare dso_local i8* @auxtrace_buffer__next(%struct.auxtrace_queue*, %struct.auxtrace_buffer*) #1

declare dso_local i32 @perf_data__fd(i32) #1

declare dso_local i32 @auxtrace_buffer__get_data(%struct.auxtrace_buffer*, i32) #1

declare dso_local i64 @intel_bts_do_fix_overlap(%struct.auxtrace_queue*, %struct.auxtrace_buffer*) #1

declare dso_local i32 @thread_stack__set_trace_nr(%struct.thread*, i32, i64) #1

declare dso_local i32 @intel_bts_process_buffer(%struct.intel_bts_queue*, %struct.auxtrace_buffer*, %struct.thread*) #1

declare dso_local i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
