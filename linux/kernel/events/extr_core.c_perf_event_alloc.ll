; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.task_struct = type { i32 }
%struct.perf_event = type { i32, i32, i32, i64, i32, %struct.hw_perf_event, i64, i32 (%struct.perf_event*)*, %struct.perf_event*, %struct.perf_event_attr, %struct.perf_event*, i32*, i32, %struct.pmu*, i32*, i32, i32, i32, i32*, %struct.perf_event*, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_perf_event = type { i32, i32, i64, i32 }
%struct.pmu = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_addr_filters_head = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@perf_pending_event = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@perf_event_id = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@local_clock = common dso_local global i32 0, align 4
@perf_event_output_backward = common dso_local global i64 0, align 8
@perf_event_output_forward = common dso_local global i64 0, align 8
@PERF_SAMPLE_READ = common dso_local global i32 0, align 4
@PERF_PMU_CAP_AUX_OUTPUT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@bpf_overflow_handler = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event* (%struct.perf_event_attr*, i32, %struct.task_struct*, %struct.perf_event*, %struct.perf_event*, i64, i8*, i32)* @perf_event_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event* @perf_event_alloc(%struct.perf_event_attr* %0, i32 %1, %struct.task_struct* %2, %struct.perf_event* %3, %struct.perf_event* %4, i64 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.perf_event*, align 8
  %10 = alloca %struct.perf_event_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca %struct.perf_event*, align 8
  %14 = alloca %struct.perf_event*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pmu*, align 8
  %19 = alloca %struct.perf_event*, align 8
  %20 = alloca %struct.hw_perf_event*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.perf_addr_filters_head*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.task_struct* %2, %struct.task_struct** %12, align 8
  store %struct.perf_event* %3, %struct.perf_event** %13, align 8
  store %struct.perf_event* %4, %struct.perf_event** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %21, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @nr_cpu_ids, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %8
  %29 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %30 = icmp ne %struct.task_struct* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %28
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  %37 = call %struct.perf_event* @ERR_PTR(i64 %36)
  store %struct.perf_event* %37, %struct.perf_event** %9, align 8
  br label %430

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.perf_event* @kzalloc(i32 264, i32 %40)
  store %struct.perf_event* %41, %struct.perf_event** %19, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %43 = icmp ne %struct.perf_event* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @ENOMEM, align 8
  %46 = sub nsw i64 0, %45
  %47 = call %struct.perf_event* @ERR_PTR(i64 %46)
  store %struct.perf_event* %47, %struct.perf_event** %9, align 8
  br label %430

48:                                               ; preds = %39
  %49 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %50 = icmp ne %struct.perf_event* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  store %struct.perf_event* %52, %struct.perf_event** %13, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 32
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %58 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %57, i32 0, i32 31
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 30
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %64 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %63, i32 0, i32 29
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %67 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %66, i32 0, i32 28
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %70 = call i32 @init_event_group(%struct.perf_event* %69)
  %71 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %72 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %71, i32 0, i32 27
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %75 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %74, i32 0, i32 26
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 21
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %82 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %81, i32 0, i32 25
  %83 = call i32 @INIT_HLIST_NODE(i32* %82)
  %84 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %85 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %84, i32 0, i32 24
  %86 = call i32 @init_waitqueue_head(i32* %85)
  %87 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %88 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %87, i32 0, i32 0
  store i32 -1, i32* %88, align 8
  %89 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %90 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %89, i32 0, i32 23
  %91 = load i32, i32* @perf_pending_event, align 4
  %92 = call i32 @init_irq_work(i32* %90, i32 %91)
  %93 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %94 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %93, i32 0, i32 22
  %95 = call i32 @mutex_init(i32* %94)
  %96 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %97 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %96, i32 0, i32 21
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @raw_spin_lock_init(i32* %98)
  %100 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %101 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %100, i32 0, i32 20
  %102 = call i32 @atomic_long_set(i32* %101, i32 1)
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %105 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %107 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %106, i32 0, i32 9
  %108 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %109 = bitcast %struct.perf_event_attr* %107 to i8*
  %110 = bitcast %struct.perf_event_attr* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 56, i1 false)
  %111 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %112 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %113 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %112, i32 0, i32 19
  store %struct.perf_event* %111, %struct.perf_event** %113, align 8
  %114 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %115 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %114, i32 0, i32 18
  store i32* null, i32** %115, align 8
  %116 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %117 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %116, i32 0, i32 2
  store i32 -1, i32* %117, align 8
  %118 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %119 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %120 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %119, i32 0, i32 10
  store %struct.perf_event* %118, %struct.perf_event** %120, align 8
  %121 = load i32, i32* @current, align 4
  %122 = call i32 @task_active_pid_ns(i32 %121)
  %123 = call i64 @get_pid_ns(i32 %122)
  %124 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %125 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %124, i32 0, i32 6
  store i64 %123, i64* %125, align 8
  %126 = call i32 @atomic64_inc_return(i32* @perf_event_id)
  %127 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %128 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %127, i32 0, i32 17
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @PERF_EVENT_STATE_INACTIVE, align 4
  %130 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %131 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %130, i32 0, i32 16
  store i32 %129, i32* %131, align 4
  %132 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %133 = icmp ne %struct.task_struct* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %53
  %135 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %136 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %137 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %136, i32 0, i32 15
  store i32 %135, i32* %137, align 8
  %138 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %139 = call i64 @get_task_struct(%struct.task_struct* %138)
  %140 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %141 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %141, i32 0, i32 2
  store i64 %139, i64* %142, align 8
  br label %143

143:                                              ; preds = %134, %53
  %144 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %145 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %144, i32 0, i32 14
  store i32* @local_clock, i32** %145, align 8
  %146 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %147 = icmp ne %struct.perf_event* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %150 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %149, i32 0, i32 14
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %153 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %152, i32 0, i32 14
  store i32* %151, i32** %153, align 8
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i64, i64* %15, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %154
  %158 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %159 = icmp ne %struct.perf_event* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %162 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %15, align 8
  %164 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %165 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %164, i32 0, i32 11
  %166 = load i32*, i32** %165, align 8
  %167 = bitcast i32* %166 to i8*
  store i8* %167, i8** %16, align 8
  br label %168

168:                                              ; preds = %160, %157, %154
  %169 = load i64, i64* %15, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i64, i64* %15, align 8
  %173 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %174 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  %175 = load i8*, i8** %16, align 8
  %176 = bitcast i8* %175 to i32*
  %177 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %178 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %177, i32 0, i32 11
  store i32* %176, i32** %178, align 8
  br label %196

179:                                              ; preds = %168
  %180 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %181 = call i64 @is_write_backward(%struct.perf_event* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i64, i64* @perf_event_output_backward, align 8
  %185 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %186 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %185, i32 0, i32 3
  store i64 %184, i64* %186, align 8
  %187 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %188 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %187, i32 0, i32 11
  store i32* null, i32** %188, align 8
  br label %195

189:                                              ; preds = %179
  %190 = load i64, i64* @perf_event_output_forward, align 8
  %191 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %192 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %191, i32 0, i32 3
  store i64 %190, i64* %192, align 8
  %193 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %194 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %193, i32 0, i32 11
  store i32* null, i32** %194, align 8
  br label %195

195:                                              ; preds = %189, %183
  br label %196

196:                                              ; preds = %195, %171
  %197 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %198 = call i32 @perf_event__state_init(%struct.perf_event* %197)
  store %struct.pmu* null, %struct.pmu** %18, align 8
  %199 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %200 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %199, i32 0, i32 5
  store %struct.hw_perf_event* %200, %struct.hw_perf_event** %20, align 8
  %201 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %202 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.hw_perf_event*, %struct.hw_perf_event** %20, align 8
  %205 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %207 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %206, i32 0, i32 7
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %196
  %211 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %212 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.hw_perf_event*, %struct.hw_perf_event** %20, align 8
  %217 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %215, %210, %196
  %219 = load %struct.hw_perf_event*, %struct.hw_perf_event** %20, align 8
  %220 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.hw_perf_event*, %struct.hw_perf_event** %20, align 8
  %223 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.hw_perf_event*, %struct.hw_perf_event** %20, align 8
  %225 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %224, i32 0, i32 3
  %226 = load %struct.hw_perf_event*, %struct.hw_perf_event** %20, align 8
  %227 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @local64_set(i32* %225, i32 %228)
  %230 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %231 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %218
  %235 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %236 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @PERF_SAMPLE_READ, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %396

242:                                              ; preds = %234, %218
  %243 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %244 = call i32 @has_branch_stack(%struct.perf_event* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %248 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %247, i32 0, i32 9
  %249 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %248, i32 0, i32 4
  store i64 0, i64* %249, align 8
  br label %250

250:                                              ; preds = %246, %242
  %251 = load i32, i32* %17, align 4
  %252 = icmp ne i32 %251, -1
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  %254 = load i32, i32* %17, align 4
  %255 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %256 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %257 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %258 = call i64 @perf_cgroup_connect(i32 %254, %struct.perf_event* %255, %struct.perf_event_attr* %256, %struct.perf_event* %257)
  store i64 %258, i64* %21, align 8
  %259 = load i64, i64* %21, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  br label %396

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %262, %250
  %264 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %265 = call %struct.pmu* @perf_init_event(%struct.perf_event* %264)
  store %struct.pmu* %265, %struct.pmu** %18, align 8
  %266 = load %struct.pmu*, %struct.pmu** %18, align 8
  %267 = call i64 @IS_ERR(%struct.pmu* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load %struct.pmu*, %struct.pmu** %18, align 8
  %271 = call i64 @PTR_ERR(%struct.pmu* %270)
  store i64 %271, i64* %21, align 8
  br label %396

272:                                              ; preds = %263
  %273 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %274 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %273, i32 0, i32 9
  %275 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %272
  %279 = load %struct.pmu*, %struct.pmu** %18, align 8
  %280 = getelementptr inbounds %struct.pmu, %struct.pmu* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @PERF_PMU_CAP_AUX_OUTPUT, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %278
  %286 = load i64, i64* @EOPNOTSUPP, align 8
  %287 = sub nsw i64 0, %286
  store i64 %287, i64* %21, align 8
  br label %380

288:                                              ; preds = %278, %272
  %289 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %290 = call i64 @exclusive_event_init(%struct.perf_event* %289)
  store i64 %290, i64* %21, align 8
  %291 = load i64, i64* %21, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  br label %380

294:                                              ; preds = %288
  %295 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %296 = call i64 @has_addr_filter(%struct.perf_event* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %345

298:                                              ; preds = %294
  %299 = load %struct.pmu*, %struct.pmu** %18, align 8
  %300 = getelementptr inbounds %struct.pmu, %struct.pmu* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @GFP_KERNEL, align 4
  %303 = call %struct.perf_event* @kcalloc(i32 %301, i32 4, i32 %302)
  %304 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %305 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %304, i32 0, i32 8
  store %struct.perf_event* %303, %struct.perf_event** %305, align 8
  %306 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %307 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %306, i32 0, i32 8
  %308 = load %struct.perf_event*, %struct.perf_event** %307, align 8
  %309 = icmp ne %struct.perf_event* %308, null
  br i1 %309, label %313, label %310

310:                                              ; preds = %298
  %311 = load i64, i64* @ENOMEM, align 8
  %312 = sub nsw i64 0, %311
  store i64 %312, i64* %21, align 8
  br label %377

313:                                              ; preds = %298
  %314 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %315 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %314, i32 0, i32 10
  %316 = load %struct.perf_event*, %struct.perf_event** %315, align 8
  %317 = icmp ne %struct.perf_event* %316, null
  br i1 %317, label %318, label %342

318:                                              ; preds = %313
  %319 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %320 = call %struct.perf_addr_filters_head* @perf_event_addr_filters(%struct.perf_event* %319)
  store %struct.perf_addr_filters_head* %320, %struct.perf_addr_filters_head** %22, align 8
  %321 = load %struct.perf_addr_filters_head*, %struct.perf_addr_filters_head** %22, align 8
  %322 = getelementptr inbounds %struct.perf_addr_filters_head, %struct.perf_addr_filters_head* %321, i32 0, i32 0
  %323 = call i32 @raw_spin_lock_irq(i32* %322)
  %324 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %325 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %324, i32 0, i32 8
  %326 = load %struct.perf_event*, %struct.perf_event** %325, align 8
  %327 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %328 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %327, i32 0, i32 10
  %329 = load %struct.perf_event*, %struct.perf_event** %328, align 8
  %330 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %329, i32 0, i32 8
  %331 = load %struct.perf_event*, %struct.perf_event** %330, align 8
  %332 = load %struct.pmu*, %struct.pmu** %18, align 8
  %333 = getelementptr inbounds %struct.pmu, %struct.pmu* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = mul i64 %335, 4
  %337 = trunc i64 %336 to i32
  %338 = call i32 @memcpy(%struct.perf_event* %326, %struct.perf_event* %331, i32 %337)
  %339 = load %struct.perf_addr_filters_head*, %struct.perf_addr_filters_head** %22, align 8
  %340 = getelementptr inbounds %struct.perf_addr_filters_head, %struct.perf_addr_filters_head* %339, i32 0, i32 0
  %341 = call i32 @raw_spin_unlock_irq(i32* %340)
  br label %342

342:                                              ; preds = %318, %313
  %343 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %344 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %343, i32 0, i32 4
  store i32 1, i32* %344, align 8
  br label %345

345:                                              ; preds = %342, %294
  %346 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %347 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %346, i32 0, i32 10
  %348 = load %struct.perf_event*, %struct.perf_event** %347, align 8
  %349 = icmp ne %struct.perf_event* %348, null
  br i1 %349, label %368, label %350

350:                                              ; preds = %345
  %351 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %352 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %351, i32 0, i32 9
  %353 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %350
  %359 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %360 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i64 @get_callchain_buffers(i32 %361)
  store i64 %362, i64* %21, align 8
  %363 = load i64, i64* %21, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %358
  br label %372

366:                                              ; preds = %358
  br label %367

367:                                              ; preds = %366, %350
  br label %368

368:                                              ; preds = %367, %345
  %369 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %370 = call i32 @account_event(%struct.perf_event* %369)
  %371 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  store %struct.perf_event* %371, %struct.perf_event** %9, align 8
  br label %430

372:                                              ; preds = %365
  %373 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %374 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %373, i32 0, i32 8
  %375 = load %struct.perf_event*, %struct.perf_event** %374, align 8
  %376 = call i32 @kfree(%struct.perf_event* %375)
  br label %377

377:                                              ; preds = %372, %310
  %378 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %379 = call i32 @exclusive_event_destroy(%struct.perf_event* %378)
  br label %380

380:                                              ; preds = %377, %293, %285
  %381 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %382 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %381, i32 0, i32 7
  %383 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %382, align 8
  %384 = icmp ne i32 (%struct.perf_event*)* %383, null
  br i1 %384, label %385, label %391

385:                                              ; preds = %380
  %386 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %387 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %386, i32 0, i32 7
  %388 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %387, align 8
  %389 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %390 = call i32 %388(%struct.perf_event* %389)
  br label %391

391:                                              ; preds = %385, %380
  %392 = load %struct.pmu*, %struct.pmu** %18, align 8
  %393 = getelementptr inbounds %struct.pmu, %struct.pmu* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @module_put(i32 %394)
  br label %396

396:                                              ; preds = %391, %269, %261, %241
  %397 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %398 = call i64 @is_cgroup_event(%struct.perf_event* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %396
  %401 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %402 = call i32 @perf_detach_cgroup(%struct.perf_event* %401)
  br label %403

403:                                              ; preds = %400, %396
  %404 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %405 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %404, i32 0, i32 6
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %403
  %409 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %410 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %409, i32 0, i32 6
  %411 = load i64, i64* %410, align 8
  %412 = call i32 @put_pid_ns(i64 %411)
  br label %413

413:                                              ; preds = %408, %403
  %414 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %415 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %425

419:                                              ; preds = %413
  %420 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %421 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = call i32 @put_task_struct(i64 %423)
  br label %425

425:                                              ; preds = %419, %413
  %426 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %427 = call i32 @kfree(%struct.perf_event* %426)
  %428 = load i64, i64* %21, align 8
  %429 = call %struct.perf_event* @ERR_PTR(i64 %428)
  store %struct.perf_event* %429, %struct.perf_event** %9, align 8
  br label %430

430:                                              ; preds = %425, %368, %44, %34
  %431 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  ret %struct.perf_event* %431
}

declare dso_local %struct.perf_event* @ERR_PTR(i64) #1

declare dso_local %struct.perf_event* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_event_group(%struct.perf_event*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_pid_ns(i32) #1

declare dso_local i32 @task_active_pid_ns(i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i64 @get_task_struct(%struct.task_struct*) #1

declare dso_local i64 @is_write_backward(%struct.perf_event*) #1

declare dso_local i32 @perf_event__state_init(%struct.perf_event*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i64 @perf_cgroup_connect(i32, %struct.perf_event*, %struct.perf_event_attr*, %struct.perf_event*) #1

declare dso_local %struct.pmu* @perf_init_event(%struct.perf_event*) #1

declare dso_local i64 @IS_ERR(%struct.pmu*) #1

declare dso_local i64 @PTR_ERR(%struct.pmu*) #1

declare dso_local i64 @exclusive_event_init(%struct.perf_event*) #1

declare dso_local i64 @has_addr_filter(%struct.perf_event*) #1

declare dso_local %struct.perf_event* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.perf_addr_filters_head* @perf_event_addr_filters(%struct.perf_event*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(%struct.perf_event*, %struct.perf_event*, i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i64 @get_callchain_buffers(i32) #1

declare dso_local i32 @account_event(%struct.perf_event*) #1

declare dso_local i32 @kfree(%struct.perf_event*) #1

declare dso_local i32 @exclusive_event_destroy(%struct.perf_event*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local i32 @perf_detach_cgroup(%struct.perf_event*) #1

declare dso_local i32 @put_pid_ns(i64) #1

declare dso_local i32 @put_task_struct(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
