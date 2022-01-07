; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_de_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_de_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, %struct.sighand_struct*, i32, i32, %struct.task_struct*, i32, i32, i32, i32, i32, %struct.signal_struct* }
%struct.sighand_struct = type { i32, i32, i32 }
%struct.signal_struct = type { i32, %struct.task_struct* }

@EAGAIN = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@PIDTYPE_TGID = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@PIDTYPE_SID = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i8* null, align 8
@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@EXIT_DEAD = common dso_local global i64 0, align 8
@sighand_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @de_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_thread(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.signal_struct*, align 8
  %5 = alloca %struct.sighand_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.sighand_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 11
  %11 = load %struct.signal_struct*, %struct.signal_struct** %10, align 8
  store %struct.signal_struct* %11, %struct.signal_struct** %4, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 2
  %14 = load %struct.sighand_struct*, %struct.sighand_struct** %13, align 8
  store %struct.sighand_struct* %14, %struct.sighand_struct** %5, align 8
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %16 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %15, i32 0, i32 0
  store i32* %16, i32** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call i64 @thread_group_empty(%struct.task_struct* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %198

21:                                               ; preds = %1
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %25 = call i64 @signal_group_exit(%struct.signal_struct* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %258

32:                                               ; preds = %21
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %35 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %34, i32 0, i32 1
  store %struct.task_struct* %33, %struct.task_struct** %35, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = call i32 @zap_other_threads(%struct.task_struct* %36)
  %38 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = call i32 @thread_group_leader(%struct.task_struct* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %45 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %64, %48
  %50 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %51 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* @TASK_KILLABLE, align 4
  %56 = call i32 @__set_current_state(i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = call i32 (...) @schedule()
  %60 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %61 = call i64 @__fatal_signal_pending(%struct.task_struct* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %249

64:                                               ; preds = %54
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @spin_lock_irq(i32* %65)
  br label %49

67:                                               ; preds = %49
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %71 = call i32 @thread_group_leader(%struct.task_struct* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %193, label %73

73:                                               ; preds = %67
  %74 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 5
  %76 = load %struct.task_struct*, %struct.task_struct** %75, align 8
  store %struct.task_struct* %76, %struct.task_struct** %7, align 8
  br label %77

77:                                               ; preds = %100, %73
  %78 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %79 = call i32 @cgroup_threadgroup_change_begin(%struct.task_struct* %78)
  %80 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %81 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %82 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  %83 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @likely(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %101

89:                                               ; preds = %77
  %90 = load i32, i32* @TASK_KILLABLE, align 4
  %91 = call i32 @__set_current_state(i32 %90)
  %92 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %93 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %94 = call i32 @cgroup_threadgroup_change_end(%struct.task_struct* %93)
  %95 = call i32 (...) @schedule()
  %96 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %97 = call i64 @__fatal_signal_pending(%struct.task_struct* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %249

100:                                              ; preds = %89
  br label %77

101:                                              ; preds = %88
  %102 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %103 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %106 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 10
  store i32 %104, i32* %106, align 8
  %107 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %108 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %111 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %113 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %114 = call i32 @same_thread_group(%struct.task_struct* %112, %struct.task_struct* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @BUG_ON(i32 %117)
  %119 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %120 = call i32 @has_group_leader_pid(%struct.task_struct* %119)
  %121 = call i32 @BUG_ON(i32 %120)
  %122 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %123 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %126 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %128 = load i32, i32* @PIDTYPE_PID, align 4
  %129 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %130 = call i32 @task_pid(%struct.task_struct* %129)
  %131 = call i32 @change_pid(%struct.task_struct* %127, i32 %128, i32 %130)
  %132 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %133 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %134 = load i32, i32* @PIDTYPE_TGID, align 4
  %135 = call i32 @transfer_pid(%struct.task_struct* %132, %struct.task_struct* %133, i32 %134)
  %136 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %137 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %138 = load i32, i32* @PIDTYPE_PGID, align 4
  %139 = call i32 @transfer_pid(%struct.task_struct* %136, %struct.task_struct* %137, i32 %138)
  %140 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %141 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %142 = load i32, i32* @PIDTYPE_SID, align 4
  %143 = call i32 @transfer_pid(%struct.task_struct* %140, %struct.task_struct* %141, i32 %142)
  %144 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %145 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %144, i32 0, i32 7
  %146 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %147 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %146, i32 0, i32 7
  %148 = call i32 @list_replace_rcu(i32* %145, i32* %147)
  %149 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %150 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %149, i32 0, i32 6
  %151 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %152 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %151, i32 0, i32 6
  %153 = call i32 @list_replace_init(i32* %150, i32* %152)
  %154 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %155 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %156 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %155, i32 0, i32 5
  store %struct.task_struct* %154, %struct.task_struct** %156, align 8
  %157 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %158 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %159 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %158, i32 0, i32 5
  store %struct.task_struct* %157, %struct.task_struct** %159, align 8
  %160 = load i8*, i8** @SIGCHLD, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %163 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %165 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %164, i32 0, i32 1
  store i32 -1, i32* %165, align 8
  %166 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %167 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @EXIT_ZOMBIE, align 8
  %170 = icmp ne i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @BUG_ON(i32 %171)
  %173 = load i64, i64* @EXIT_DEAD, align 8
  %174 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %175 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %177 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %101
  %182 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %183 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %184 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @__wake_up_parent(%struct.task_struct* %182, i32 %185)
  br label %187

187:                                              ; preds = %181, %101
  %188 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %189 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %190 = call i32 @cgroup_threadgroup_change_end(%struct.task_struct* %189)
  %191 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %192 = call i32 @release_task(%struct.task_struct* %191)
  br label %193

193:                                              ; preds = %187, %67
  %194 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %195 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %194, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %195, align 8
  %196 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %197 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %198

198:                                              ; preds = %193, %20
  %199 = load i8*, i8** @SIGCHLD, align 8
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %202 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 8
  %203 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %204 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %203, i32 0, i32 2
  %205 = call i32 @refcount_read(i32* %204)
  %206 = icmp ne i32 %205, 1
  br i1 %206, label %207, label %242

207:                                              ; preds = %198
  %208 = load i32, i32* @sighand_cachep, align 4
  %209 = load i32, i32* @GFP_KERNEL, align 4
  %210 = call %struct.sighand_struct* @kmem_cache_alloc(i32 %208, i32 %209)
  store %struct.sighand_struct* %210, %struct.sighand_struct** %8, align 8
  %211 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %212 = icmp ne %struct.sighand_struct* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %2, align 4
  br label %258

216:                                              ; preds = %207
  %217 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %218 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %217, i32 0, i32 2
  %219 = call i32 @refcount_set(i32* %218, i32 1)
  %220 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %221 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %224 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @memcpy(i32 %222, i32 %225, i32 4)
  %227 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %228 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %229 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %228, i32 0, i32 0
  %230 = call i32 @spin_lock(i32* %229)
  %231 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %232 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %231, i32 0, i32 2
  %233 = load %struct.sighand_struct*, %struct.sighand_struct** %232, align 8
  %234 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %235 = call i32 @rcu_assign_pointer(%struct.sighand_struct* %233, %struct.sighand_struct* %234)
  %236 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %237 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %236, i32 0, i32 0
  %238 = call i32 @spin_unlock(i32* %237)
  %239 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %240 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %241 = call i32 @__cleanup_sighand(%struct.sighand_struct* %240)
  br label %242

242:                                              ; preds = %216, %198
  %243 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %244 = call i32 @thread_group_leader(%struct.task_struct* %243)
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i32 @BUG_ON(i32 %247)
  store i32 0, i32* %2, align 4
  br label %258

249:                                              ; preds = %99, %63
  %250 = call i32 @read_lock(i32* @tasklist_lock)
  %251 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %252 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %251, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %252, align 8
  %253 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %254 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %253, i32 0, i32 0
  store i32 0, i32* %254, align 8
  %255 = call i32 @read_unlock(i32* @tasklist_lock)
  %256 = load i32, i32* @EAGAIN, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %249, %242, %213, %27
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @signal_group_exit(%struct.signal_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @zap_other_threads(%struct.task_struct*) #1

declare dso_local i32 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @__fatal_signal_pending(%struct.task_struct*) #1

declare dso_local i32 @cgroup_threadgroup_change_begin(%struct.task_struct*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @cgroup_threadgroup_change_end(%struct.task_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @has_group_leader_pid(%struct.task_struct*) #1

declare dso_local i32 @change_pid(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @task_pid(%struct.task_struct*) #1

declare dso_local i32 @transfer_pid(%struct.task_struct*, %struct.task_struct*, i32) #1

declare dso_local i32 @list_replace_rcu(i32*, i32*) #1

declare dso_local i32 @list_replace_init(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__wake_up_parent(%struct.task_struct*, i32) #1

declare dso_local i32 @release_task(%struct.task_struct*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local %struct.sighand_struct* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.sighand_struct*, %struct.sighand_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__cleanup_sighand(%struct.sighand_struct*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
