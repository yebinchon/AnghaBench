; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)*, i32 (...)*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }

@cur_ops = common dso_local global %struct.TYPE_4__* null, align 8
@rcu_torture_fwd_prog = common dso_local global i32 0, align 4
@fwd_prog_task = common dso_local global i32 0, align 4
@rcu_torture_stall = common dso_local global i32 0, align 4
@stall_task = common dso_local global i32 0, align 4
@rcu_torture_writer = common dso_local global i32 0, align 4
@writer_task = common dso_local global i32 0, align 4
@reader_tasks = common dso_local global i32* null, align 8
@nrealreaders = common dso_local global i32 0, align 4
@rcu_torture_reader = common dso_local global i32 0, align 4
@rcu_torture_current = common dso_local global i32* null, align 8
@fakewriter_tasks = common dso_local global i32* null, align 8
@nfakewriters = common dso_local global i32 0, align 4
@rcu_torture_fakewriter = common dso_local global i32 0, align 4
@srcu_ctlp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s:  End-test grace-period state: g%lu f%#x\0A\00", align 1
@rcu_torture_stats = common dso_local global i32 0, align 4
@stats_task = common dso_local global i32 0, align 4
@rcu_torture_fqs = common dso_local global i32 0, align 4
@fqs_task = common dso_local global i32 0, align 4
@rcutor_hp = common dso_local global i32 0, align 4
@err_segs_recorded = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Failure/close-call rcutorture reader segments:\0A\00", align 1
@rt_read_nsegs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"\09: No segments recorded!!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\09%d: %#x \00", align 1
@err_segs = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"%s%ldjiffies\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s%ldms\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s%ldus\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"preempted\00", align 1
@n_rcu_torture_error = common dso_local global i32 0, align 4
@n_rcu_torture_barrier_error = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"End of test: FAILURE\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"End of test: RCU_HOTPLUG\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"End of test: SUCCESS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rcu_torture_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_torture_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %5 = call i64 (...) @torture_cleanup_begin()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = icmp ne i32 (...)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  br label %17

17:                                               ; preds = %12, %7
  br label %244

18:                                               ; preds = %0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @torture_cleanup_end()
  br label %244

23:                                               ; preds = %18
  %24 = call i32 (...) @show_rcu_gp_kthreads()
  %25 = call i32 (...) @rcu_torture_barrier_cleanup()
  %26 = load i32, i32* @rcu_torture_fwd_prog, align 4
  %27 = load i32, i32* @fwd_prog_task, align 4
  %28 = call i32 @torture_stop_kthread(i32 %26, i32 %27)
  %29 = load i32, i32* @rcu_torture_stall, align 4
  %30 = load i32, i32* @stall_task, align 4
  %31 = call i32 @torture_stop_kthread(i32 %29, i32 %30)
  %32 = load i32, i32* @rcu_torture_writer, align 4
  %33 = load i32, i32* @writer_task, align 4
  %34 = call i32 @torture_stop_kthread(i32 %32, i32 %33)
  %35 = load i32*, i32** @reader_tasks, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @nrealreaders, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* @rcu_torture_reader, align 4
  %44 = load i32*, i32** @reader_tasks, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @torture_stop_kthread(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load i32*, i32** @reader_tasks, align 8
  %55 = call i32 @kfree(i32* %54)
  br label %56

56:                                               ; preds = %53, %23
  store i32* null, i32** @rcu_torture_current, align 8
  %57 = load i32*, i32** @fakewriter_tasks, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @nfakewriters, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* @rcu_torture_fakewriter, align 4
  %66 = load i32*, i32** @fakewriter_tasks, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @torture_stop_kthread(i32 %65, i32 %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load i32*, i32** @fakewriter_tasks, align 8
  %77 = call i32 @kfree(i32* %76)
  store i32* null, i32** @fakewriter_tasks, align 8
  br label %78

78:                                               ; preds = %75, %56
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rcutorture_get_gp_data(i32 %81, i32* %2, i64* %3)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @srcu_ctlp, align 4
  %87 = call i32 @srcutorture_get_gp_data(i32 %85, i32 %86, i32* %2, i64* %3)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i32, i32* %2, align 4
  %93 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %90, i64 %91, i32 %92)
  %94 = load i32, i32* @rcu_torture_stats, align 4
  %95 = load i32, i32* @stats_task, align 4
  %96 = call i32 @torture_stop_kthread(i32 %94, i32 %95)
  %97 = load i32, i32* @rcu_torture_fqs, align 4
  %98 = load i32, i32* @fqs_task, align 4
  %99 = call i32 @torture_stop_kthread(i32 %97, i32 %98)
  %100 = call i64 (...) @rcu_torture_can_boost()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %78
  %103 = load i32, i32* @rcutor_hp, align 4
  %104 = call i32 @cpuhp_remove_state(i32 %103)
  br label %105

105:                                              ; preds = %102, %78
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32 (...)*, i32 (...)** %107, align 8
  %109 = icmp ne i32 (...)* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32 (...)*, i32 (...)** %112, align 8
  %114 = call i32 (...) %113()
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32 (...)*, i32 (...)** %117, align 8
  %119 = icmp ne i32 (...)* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32 (...)*, i32 (...)** %122, align 8
  %124 = call i32 (...) %123()
  br label %125

125:                                              ; preds = %120, %115
  %126 = call i32 (...) @rcu_torture_stats_print()
  %127 = load i64, i64* @err_segs_recorded, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %223

129:                                              ; preds = %125
  %130 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @rt_read_nsegs, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  store i32 1, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %219, %135
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @rt_read_nsegs, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %222

140:                                              ; preds = %136
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %140
  %157 = load i32, i32* %1, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %160, i64 %166)
  store i32 0, i32* %1, align 4
  br label %168

168:                                              ; preds = %156, %140
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %168
  %177 = load i32, i32* %1, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %180, i64 %186)
  store i32 0, i32* %1, align 4
  br label %188

188:                                              ; preds = %176, %168
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %188
  %197 = load i32, i32* %1, align 4
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %202 = load i32, i32* %4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %200, i64 %206)
  store i32 0, i32* %1, align 4
  br label %208

208:                                              ; preds = %196, %188
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** @err_segs, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %218 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %208
  %220 = load i32, i32* %4, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %4, align 4
  br label %136

222:                                              ; preds = %136
  br label %223

223:                                              ; preds = %222, %125
  %224 = call i64 @atomic_read(i32* @n_rcu_torture_error)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i64, i64* @n_rcu_torture_barrier_error, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226, %223
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %231 = call i32 @rcu_torture_print_module_parms(%struct.TYPE_4__* %230, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %242

232:                                              ; preds = %226
  %233 = call i64 (...) @torture_onoff_failures()
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %237 = call i32 @rcu_torture_print_module_parms(%struct.TYPE_4__* %236, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %241

238:                                              ; preds = %232
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cur_ops, align 8
  %240 = call i32 @rcu_torture_print_module_parms(%struct.TYPE_4__* %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %229
  %243 = call i32 (...) @torture_cleanup_end()
  br label %244

244:                                              ; preds = %242, %21, %17
  ret void
}

declare dso_local i64 @torture_cleanup_begin(...) #1

declare dso_local i32 @torture_cleanup_end(...) #1

declare dso_local i32 @show_rcu_gp_kthreads(...) #1

declare dso_local i32 @rcu_torture_barrier_cleanup(...) #1

declare dso_local i32 @torture_stop_kthread(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rcutorture_get_gp_data(i32, i32*, i64*) #1

declare dso_local i32 @srcutorture_get_gp_data(i32, i32, i32*, i64*) #1

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i64 @rcu_torture_can_boost(...) #1

declare dso_local i32 @cpuhp_remove_state(i32) #1

declare dso_local i32 @rcu_torture_stats_print(...) #1

declare dso_local i32 @pr_cont(i8*, i8*, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rcu_torture_print_module_parms(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @torture_onoff_failures(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
