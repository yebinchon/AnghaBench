; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcu_perf_writer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcu_perf_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (%struct.rcu_head*, i32)* }
%struct.rcu_head = type { i32 }
%struct.sched_param = type { i32 }

@writer_durations = common dso_local global i8*** null, align 8
@.str = private unnamed_addr constant [29 x i8] c"rcu_perf_writer task started\00", align 1
@current = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8
@SCHED_FIFO = common dso_local global i32 0, align 4
@holdoff = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@gp_exp = common dso_local global i64 0, align 8
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@n_rcu_perf_writer_started = common dso_local global i32 0, align 4
@nrealwriters = common dso_local global i64 0, align 8
@t_rcu_perf_writer_started = common dso_local global i8* null, align 8
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@b_rcu_perf_writer_started = common dso_local global i32 0, align 4
@writer_holdoff = common dso_local global i64 0, align 8
@gp_async = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@n_async_inflight = common dso_local global i32 0, align 4
@gp_async_max = common dso_local global i64 0, align 8
@RTWS_ASYNC = common dso_local global i32 0, align 4
@rcu_perf_writer_state = common dso_local global i32 0, align 4
@rcu_perf_async_cb = common dso_local global i32 0, align 4
@RTWS_BARRIER = common dso_local global i32 0, align 4
@RTWS_EXP_SYNC = common dso_local global i32 0, align 4
@RTWS_SYNC = common dso_local global i32 0, align 4
@RTWS_IDLE = common dso_local global i32 0, align 4
@MIN_MEAS = common dso_local global i32 0, align 4
@SCHED_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s%s rcu_perf_writer %ld has %d measurements\0A\00", align 1
@perf_type = common dso_local global i32 0, align 4
@PERF_FLAG = common dso_local global i32 0, align 4
@n_rcu_perf_writer_finished = common dso_local global i32 0, align 4
@DUMP_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Test complete\00", align 1
@t_rcu_perf_writer_finished = common dso_local global i8* null, align 8
@b_rcu_perf_writer_finished = common dso_local global i32 0, align 4
@shutdown = common dso_local global i64 0, align 8
@shutdown_wq = common dso_local global i32 0, align 4
@MAX_MEAS = common dso_local global i32 0, align 4
@RTWS_STOPPING = common dso_local global i32 0, align 4
@writer_n_durations = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"rcu_perf_writer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_perf_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_perf_writer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rcu_head*, align 8
  %7 = alloca %struct.sched_param, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %5, align 8
  store %struct.rcu_head* null, %struct.rcu_head** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i8***, i8**** @writer_durations, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i8**, i8*** %16, i64 %17
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %13, align 8
  %20 = call i32 @VERBOSE_PERFOUT_STRING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i8**, i8*** %13, align 8
  %22 = icmp ne i8** %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i32, i32* @current, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @nr_cpu_ids, align 8
  %29 = srem i64 %27, %28
  %30 = call i32 @cpumask_of(i64 %29)
  %31 = call i32 @set_cpus_allowed_ptr(i32 %26, i32 %30)
  %32 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @current, align 4
  %34 = load i32, i32* @SCHED_FIFO, align 4
  %35 = call i32 @sched_setscheduler_nocheck(i32 %33, i32 %34, %struct.sched_param* %7)
  %36 = load i32, i32* @holdoff, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load i32, i32* @holdoff, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @schedule_timeout_uninterruptible(i32 %41)
  br label %43

43:                                               ; preds = %38, %1
  br label %44

44:                                               ; preds = %53, %43
  %45 = load i64, i64* @gp_exp, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @system_state, align 8
  %49 = load i64, i64* @SYSTEM_RUNNING, align 8
  %50 = icmp ne i64 %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %44

55:                                               ; preds = %51
  %56 = call i8* (...) @ktime_get_mono_fast_ns()
  store i8* %56, i8** %11, align 8
  %57 = call i64 @atomic_inc_return(i32* @n_rcu_perf_writer_started)
  %58 = load i64, i64* @nrealwriters, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  store i8* %61, i8** @t_rcu_perf_writer_started, align 8
  %62 = load i64, i64* @gp_exp, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (...)*, i32 (...)** %66, align 8
  %68 = call i32 (...) %67()
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* @b_rcu_perf_writer_started, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (...)*, i32 (...)** %72, align 8
  %74 = call i32 (...) %73()
  store i32 %74, i32* @b_rcu_perf_writer_started, align 4
  br label %75

75:                                               ; preds = %70, %64
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %240, %76
  %78 = load i64, i64* @writer_holdoff, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* @writer_holdoff, align 8
  %82 = call i32 @udelay(i64 %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i8**, i8*** %13, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8** %87, i8*** %12, align 8
  %88 = call i8* (...) @ktime_get_mono_fast_ns()
  %89 = load i8**, i8*** %12, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i64, i64* @gp_async, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %120, %92
  %94 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %95 = icmp ne %struct.rcu_head* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.rcu_head* @kmalloc(i32 4, i32 %97)
  store %struct.rcu_head* %98, %struct.rcu_head** %6, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %101 = icmp ne %struct.rcu_head* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = call i32* @this_cpu_ptr(i32* @n_async_inflight)
  %104 = call i64 @atomic_read(i32* %103)
  %105 = load i64, i64* @gp_async_max, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i32, i32* @RTWS_ASYNC, align 4
  store i32 %108, i32* @rcu_perf_writer_state, align 4
  %109 = call i32* @this_cpu_ptr(i32* @n_async_inflight)
  %110 = call i32 @atomic_inc(i32* %109)
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i32 (%struct.rcu_head*, i32)*, i32 (%struct.rcu_head*, i32)** %112, align 8
  %114 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %115 = load i32, i32* @rcu_perf_async_cb, align 4
  %116 = call i32 %113(%struct.rcu_head* %114, i32 %115)
  store %struct.rcu_head* null, %struct.rcu_head** %6, align 8
  br label %130

117:                                              ; preds = %102, %99
  %118 = call i32 (...) @kthread_should_stop()
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @RTWS_BARRIER, align 4
  store i32 %121, i32* @rcu_perf_writer_state, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32 (...)*, i32 (...)** %123, align 8
  %125 = call i32 (...) %124()
  br label %93

126:                                              ; preds = %117
  %127 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %128 = call i32 @kfree(%struct.rcu_head* %127)
  br label %129

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129, %107
  br label %147

131:                                              ; preds = %83
  %132 = load i64, i64* @gp_exp, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* @RTWS_EXP_SYNC, align 4
  store i32 %135, i32* @rcu_perf_writer_state, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  %138 = load i32 (...)*, i32 (...)** %137, align 8
  %139 = call i32 (...) %138()
  br label %146

140:                                              ; preds = %131
  %141 = load i32, i32* @RTWS_SYNC, align 4
  store i32 %141, i32* @rcu_perf_writer_state, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  %144 = load i32 (...)*, i32 (...)** %143, align 8
  %145 = call i32 (...) %144()
  br label %146

146:                                              ; preds = %140, %134
  br label %147

147:                                              ; preds = %146, %130
  %148 = load i32, i32* @RTWS_IDLE, align 4
  store i32 %148, i32* @rcu_perf_writer_state, align 4
  %149 = call i8* (...) @ktime_get_mono_fast_ns()
  store i8* %149, i8** %11, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = load i8**, i8*** %12, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = ptrtoint i8* %150 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = inttoptr i64 %155 to i8*
  %157 = load i8**, i8*** %12, align 8
  store i8* %156, i8** %157, align 8
  %158 = load i32, i32* %3, align 4
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %147
  %162 = call i64 @atomic_read(i32* @n_rcu_perf_writer_started)
  %163 = load i64, i64* @nrealwriters, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 1, i32* %8, align 4
  br label %166

166:                                              ; preds = %165, %161, %147
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %213, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @MIN_MEAS, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %213

173:                                              ; preds = %169
  store i32 1, i32* %9, align 4
  %174 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  store i32 0, i32* %174, align 4
  %175 = load i32, i32* @current, align 4
  %176 = load i32, i32* @SCHED_NORMAL, align 4
  %177 = call i32 @sched_setscheduler_nocheck(i32 %175, i32 %176, %struct.sched_param* %7)
  %178 = load i32, i32* @perf_type, align 4
  %179 = load i32, i32* @PERF_FLAG, align 4
  %180 = load i64, i64* %5, align 8
  %181 = load i32, i32* @MIN_MEAS, align 4
  %182 = call i32 @pr_alert(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %178, i32 %179, i64 %180, i32 %181)
  %183 = call i64 @atomic_inc_return(i32* @n_rcu_perf_writer_finished)
  %184 = load i64, i64* @nrealwriters, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %212

186:                                              ; preds = %173
  %187 = call i32 @schedule_timeout_interruptible(i32 10)
  %188 = load i32, i32* @DUMP_ALL, align 4
  %189 = call i32 @rcu_ftrace_dump(i32 %188)
  %190 = call i32 @PERFOUT_STRING(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %191 = load i8*, i8** %11, align 8
  store i8* %191, i8** @t_rcu_perf_writer_finished, align 8
  %192 = load i64, i64* @gp_exp, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32 (...)*, i32 (...)** %196, align 8
  %198 = call i32 (...) %197()
  %199 = sdiv i32 %198, 2
  store i32 %199, i32* @b_rcu_perf_writer_finished, align 4
  br label %205

200:                                              ; preds = %186
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load i32 (...)*, i32 (...)** %202, align 8
  %204 = call i32 (...) %203()
  store i32 %204, i32* @b_rcu_perf_writer_finished, align 4
  br label %205

205:                                              ; preds = %200, %194
  %206 = load i64, i64* @shutdown, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = call i32 (...) @smp_mb()
  %210 = call i32 @wake_up(i32* @shutdown_wq)
  br label %211

211:                                              ; preds = %208, %205
  br label %212

212:                                              ; preds = %211, %173
  br label %213

213:                                              ; preds = %212, %169, %166
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %216
  %220 = call i64 @atomic_read(i32* @n_rcu_perf_writer_finished)
  %221 = load i64, i64* @nrealwriters, align 8
  %222 = icmp sge i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i32 1, i32* %10, align 4
  br label %224

224:                                              ; preds = %223, %219, %216, %213
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %224
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %3, align 4
  %232 = load i32, i32* @MAX_MEAS, align 4
  %233 = sub nsw i32 %232, 1
  %234 = icmp slt i32 %231, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %235, %230, %227, %224
  %239 = call i32 (...) @rcu_perf_wait_shutdown()
  br label %240

240:                                              ; preds = %238
  %241 = call i32 (...) @torture_must_stop()
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  br i1 %243, label %77, label %244

244:                                              ; preds = %240
  %245 = load i64, i64* @gp_async, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32, i32* @RTWS_BARRIER, align 4
  store i32 %248, i32* @rcu_perf_writer_state, align 4
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 2
  %251 = load i32 (...)*, i32 (...)** %250, align 8
  %252 = call i32 (...) %251()
  br label %253

253:                                              ; preds = %247, %244
  %254 = load i32, i32* @RTWS_STOPPING, align 4
  store i32 %254, i32* @rcu_perf_writer_state, align 4
  %255 = load i32, i32* %4, align 4
  %256 = load i32*, i32** @writer_n_durations, align 8
  %257 = load i64, i64* %5, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32 %255, i32* %258, align 4
  %259 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @VERBOSE_PERFOUT_STRING(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_cpus_allowed_ptr(i32, i32) #1

declare dso_local i32 @cpumask_of(i64) #1

declare dso_local i32 @sched_setscheduler_nocheck(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i8* @ktime_get_mono_fast_ns(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local %struct.rcu_head* @kmalloc(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32* @this_cpu_ptr(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @kfree(%struct.rcu_head*) #1

declare dso_local i32 @pr_alert(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @rcu_ftrace_dump(i32) #1

declare dso_local i32 @PERFOUT_STRING(i8*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @rcu_perf_wait_shutdown(...) #1

declare dso_local i32 @torture_must_stop(...) #1

declare dso_local i32 @torture_kthread_stopping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
