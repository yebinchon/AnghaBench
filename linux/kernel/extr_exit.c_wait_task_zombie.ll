; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_task_zombie.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_task_zombie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.signal_struct* }
%struct.TYPE_3__ = type { i32 }
%struct.signal_struct = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.wait_opts = type { i32, i32, %struct.waitid_info*, i64 }
%struct.waitid_info = type { i32, i32, i32, i32 }
%struct.task_struct = type { i32, i32, i32, %struct.signal_struct*, i32, i64, i64, i64, i64 }

@WEXITED = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@RUSAGE_BOTH = common dso_local global i32 0, align 4
@EXIT_TRACE = common dso_local global i32 0, align 4
@EXIT_DEAD = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@SIGNAL_GROUP_EXIT = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i32 0, align 4
@CLD_DUMPED = common dso_local global i32 0, align 4
@CLD_KILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, %struct.task_struct*)* @wait_task_zombie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_task_zombie(%struct.wait_opts* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wait_opts*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.waitid_info*, align 8
  %11 = alloca %struct.signal_struct*, align 8
  %12 = alloca %struct.signal_struct*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.wait_opts* %0, %struct.wait_opts** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = call i32 @task_pid_vnr(%struct.task_struct* %16)
  store i32 %17, i32* %8, align 4
  %18 = call i32 (...) @current_user_ns()
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = call i32 @task_uid(%struct.task_struct* %19)
  %21 = call i32 @from_kuid_munged(i32 %18, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %23 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WEXITED, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @likely(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %372

30:                                               ; preds = %2
  %31 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %32 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WNOWAIT, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %30
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = call i32 @get_task_struct(%struct.task_struct* %42)
  %44 = call i32 @read_unlock(i32* @tasklist_lock)
  %45 = call i32 (...) @sched_annotate_sleep()
  %46 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %47 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %52 = load i32, i32* @RUSAGE_BOTH, align 4
  %53 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %54 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @getrusage(%struct.task_struct* %51, i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %50, %38
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = call i32 @put_task_struct(%struct.task_struct* %58)
  br label %329

60:                                               ; preds = %30
  %61 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %62 = call i64 @ptrace_reparented(%struct.task_struct* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = call i64 @thread_group_leader(%struct.task_struct* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @EXIT_TRACE, align 4
  br label %72

70:                                               ; preds = %64, %60
  %71 = load i32, i32* @EXIT_DEAD, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %6, align 4
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 1
  %76 = load i32, i32* @EXIT_ZOMBIE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @cmpxchg(i32* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @EXIT_ZOMBIE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %372

82:                                               ; preds = %72
  %83 = call i32 @read_unlock(i32* @tasklist_lock)
  %84 = call i32 (...) @sched_annotate_sleep()
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @EXIT_DEAD, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %264

88:                                               ; preds = %82
  %89 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %90 = call i64 @thread_group_leader(%struct.task_struct* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %264

92:                                               ; preds = %88
  %93 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 3
  %95 = load %struct.signal_struct*, %struct.signal_struct** %94, align 8
  store %struct.signal_struct* %95, %struct.signal_struct** %11, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.signal_struct*, %struct.signal_struct** %97, align 8
  store %struct.signal_struct* %98, %struct.signal_struct** %12, align 8
  %99 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %100 = call i32 @thread_group_cputime_adjusted(%struct.task_struct* %99, i64* %14, i64* %15)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @spin_lock_irq(i32* %104)
  %106 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %107 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %106, i32 0, i32 3
  %108 = call i32 @write_seqlock(i32* %107)
  %109 = load i64, i64* %14, align 8
  %110 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %111 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %110, i32 0, i32 21
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %115 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %114, i32 0, i32 21
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %120 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %119, i32 0, i32 20
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %124 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %123, i32 0, i32 20
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %128 = call i64 @task_gtime(%struct.task_struct* %127)
  %129 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %130 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %129, i32 0, i32 19
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %134 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %133, i32 0, i32 18
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %138 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %137, i32 0, i32 18
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %142 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %145 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %144, i32 0, i32 17
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %149 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %148, i32 0, i32 16
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %153 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %152, i32 0, i32 16
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %151
  store i64 %155, i64* %153, align 8
  %156 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %157 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %160 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %159, i32 0, i32 15
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %158, %161
  %163 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %164 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %163, i32 0, i32 14
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %162, %165
  %167 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %168 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %167, i32 0, i32 14
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %172 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %175 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %174, i32 0, i32 13
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %173, %176
  %178 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %179 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %178, i32 0, i32 12
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %183 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %182, i32 0, i32 12
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %181
  store i64 %185, i64* %183, align 8
  %186 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %187 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %190 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %189, i32 0, i32 11
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %188, %191
  %193 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %194 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %193, i32 0, i32 10
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %198 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %197, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, %196
  store i64 %200, i64* %198, align 8
  %201 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %202 = call i64 @task_io_get_inblock(%struct.task_struct* %201)
  %203 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %204 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %203, i32 0, i32 9
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %202, %205
  %207 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %208 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %207, i32 0, i32 8
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %206, %209
  %211 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %212 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %211, i32 0, i32 8
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, %210
  store i64 %214, i64* %212, align 8
  %215 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %216 = call i64 @task_io_get_oublock(%struct.task_struct* %215)
  %217 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %218 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %217, i32 0, i32 7
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %216, %219
  %221 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %222 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %221, i32 0, i32 6
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %220, %223
  %225 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %226 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, %224
  store i64 %228, i64* %226, align 8
  %229 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %230 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %233 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @max(i32 %231, i64 %234)
  store i64 %235, i64* %13, align 8
  %236 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %237 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %13, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %92
  %242 = load i64, i64* %13, align 8
  %243 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %244 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %241, %92
  %246 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %247 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %246, i32 0, i32 4
  %248 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %249 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %248, i32 0, i32 4
  %250 = call i32 @task_io_accounting_add(i32* %247, i32* %249)
  %251 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %252 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %251, i32 0, i32 4
  %253 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  %254 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %253, i32 0, i32 4
  %255 = call i32 @task_io_accounting_add(i32* %252, i32* %254)
  %256 = load %struct.signal_struct*, %struct.signal_struct** %12, align 8
  %257 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %256, i32 0, i32 3
  %258 = call i32 @write_sequnlock(i32* %257)
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = call i32 @spin_unlock_irq(i32* %262)
  br label %264

264:                                              ; preds = %245, %88, %82
  %265 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %266 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %264
  %270 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %271 = load i32, i32* @RUSAGE_BOTH, align 4
  %272 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %273 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @getrusage(%struct.task_struct* %270, i32 %271, i64 %274)
  br label %276

276:                                              ; preds = %269, %264
  %277 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %278 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %277, i32 0, i32 3
  %279 = load %struct.signal_struct*, %struct.signal_struct** %278, align 8
  %280 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @SIGNAL_GROUP_EXIT, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %276
  %286 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %287 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %286, i32 0, i32 3
  %288 = load %struct.signal_struct*, %struct.signal_struct** %287, align 8
  %289 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  br label %295

291:                                              ; preds = %276
  %292 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %293 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  br label %295

295:                                              ; preds = %291, %285
  %296 = phi i32 [ %290, %285 ], [ %294, %291 ]
  store i32 %296, i32* %7, align 4
  %297 = load i32, i32* %7, align 4
  %298 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %299 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %6, align 4
  %301 = load i32, i32* @EXIT_TRACE, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %321

303:                                              ; preds = %295
  %304 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %305 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %306 = call i32 @ptrace_unlink(%struct.task_struct* %305)
  %307 = load i32, i32* @EXIT_ZOMBIE, align 4
  store i32 %307, i32* %6, align 4
  %308 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %309 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %310 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @do_notify_parent(%struct.task_struct* %308, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %303
  %315 = load i32, i32* @EXIT_DEAD, align 4
  store i32 %315, i32* %6, align 4
  br label %316

316:                                              ; preds = %314, %303
  %317 = load i32, i32* %6, align 4
  %318 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %319 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 4
  %320 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  br label %321

321:                                              ; preds = %316, %295
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* @EXIT_DEAD, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %321
  %326 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %327 = call i32 @release_task(%struct.task_struct* %326)
  br label %328

328:                                              ; preds = %325, %321
  br label %329

329:                                              ; preds = %328, %57
  %330 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %331 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %330, i32 0, i32 2
  %332 = load %struct.waitid_info*, %struct.waitid_info** %331, align 8
  store %struct.waitid_info* %332, %struct.waitid_info** %10, align 8
  %333 = load %struct.waitid_info*, %struct.waitid_info** %10, align 8
  %334 = icmp ne %struct.waitid_info* %333, null
  br i1 %334, label %335, label %370

335:                                              ; preds = %329
  %336 = load i32, i32* %7, align 4
  %337 = and i32 %336, 127
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %335
  %340 = load i32, i32* @CLD_EXITED, align 4
  %341 = load %struct.waitid_info*, %struct.waitid_info** %10, align 8
  %342 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %341, i32 0, i32 3
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* %7, align 4
  %344 = ashr i32 %343, 8
  %345 = load %struct.waitid_info*, %struct.waitid_info** %10, align 8
  %346 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %345, i32 0, i32 0
  store i32 %344, i32* %346, align 4
  br label %363

347:                                              ; preds = %335
  %348 = load i32, i32* %7, align 4
  %349 = and i32 %348, 128
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = load i32, i32* @CLD_DUMPED, align 4
  br label %355

353:                                              ; preds = %347
  %354 = load i32, i32* @CLD_KILLED, align 4
  br label %355

355:                                              ; preds = %353, %351
  %356 = phi i32 [ %352, %351 ], [ %354, %353 ]
  %357 = load %struct.waitid_info*, %struct.waitid_info** %10, align 8
  %358 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %357, i32 0, i32 3
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %7, align 4
  %360 = and i32 %359, 127
  %361 = load %struct.waitid_info*, %struct.waitid_info** %10, align 8
  %362 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %361, i32 0, i32 0
  store i32 %360, i32* %362, align 4
  br label %363

363:                                              ; preds = %355, %339
  %364 = load i32, i32* %8, align 4
  %365 = load %struct.waitid_info*, %struct.waitid_info** %10, align 8
  %366 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %9, align 4
  %368 = load %struct.waitid_info*, %struct.waitid_info** %10, align 8
  %369 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %368, i32 0, i32 2
  store i32 %367, i32* %369, align 4
  br label %370

370:                                              ; preds = %363, %329
  %371 = load i32, i32* %8, align 4
  store i32 %371, i32* %3, align 4
  br label %372

372:                                              ; preds = %370, %81, %29
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @sched_annotate_sleep(...) #1

declare dso_local i32 @getrusage(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i64 @ptrace_reparented(%struct.task_struct*) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @thread_group_cputime_adjusted(%struct.task_struct*, i64*, i64*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i64 @task_gtime(%struct.task_struct*) #1

declare dso_local i64 @task_io_get_inblock(%struct.task_struct*) #1

declare dso_local i64 @task_io_get_oublock(%struct.task_struct*) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @task_io_accounting_add(i32*, i32*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @ptrace_unlink(%struct.task_struct*) #1

declare dso_local i64 @do_notify_parent(%struct.task_struct*, i32) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @release_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
