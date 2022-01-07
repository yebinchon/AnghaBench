; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_update_curr_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_update_curr_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.rt_rq, i32, %struct.task_struct* }
%struct.rt_rq = type { i32, i32 }
%struct.task_struct = type { %struct.sched_dl_entity, %struct.TYPE_4__ }
%struct.sched_dl_entity = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SCHED_FLAG_RECLAIM = common dso_local global i32 0, align 4
@SCHED_FLAG_DL_OVERRUN = common dso_local global i32 0, align 4
@ENQUEUE_REPLENISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*)* @update_curr_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_curr_dl(%struct.rq* %0) #0 {
  %2 = alloca %struct.rq*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.sched_dl_entity*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rt_rq*, align 8
  store %struct.rq* %0, %struct.rq** %2, align 8
  %12 = load %struct.rq*, %struct.rq** %2, align 8
  %13 = getelementptr inbounds %struct.rq, %struct.rq* %12, i32 0, i32 2
  %14 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  store %struct.task_struct* %14, %struct.task_struct** %3, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  store %struct.sched_dl_entity* %16, %struct.sched_dl_entity** %4, align 8
  %17 = load %struct.rq*, %struct.rq** %2, align 8
  %18 = call i32 @cpu_of(%struct.rq* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call i32 @dl_task(%struct.task_struct* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %24 = call i32 @on_dl_rq(%struct.sched_dl_entity* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %1
  br label %200

27:                                               ; preds = %22
  %28 = load %struct.rq*, %struct.rq** %2, align 8
  %29 = call i64 @rq_clock_task(%struct.rq* %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %30, %34
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp sle i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %43 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %118

48:                                               ; preds = %41
  br label %200

49:                                               ; preds = %27
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @max(i32 %59, i64 %60)
  %62 = call i32 @schedstat_set(i32 %54, i32 %61)
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %63
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @account_group_exec_runtime(%struct.task_struct* %71, i64 %72)
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @cgroup_account_cputime(%struct.task_struct* %78, i64 %79)
  %81 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %82 = call i64 @dl_entity_is_special(%struct.sched_dl_entity* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %49
  br label %200

85:                                               ; preds = %49
  %86 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %87 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SCHED_FLAG_RECLAIM, align 4
  %90 = and i32 %88, %89
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i64, i64* %5, align 8
  %95 = load %struct.rq*, %struct.rq** %2, align 8
  %96 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %97 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %96, i32 0, i32 0
  %98 = call i64 @grub_reclaim(i64 %94, %struct.rq* %95, %struct.sched_dl_entity* %97)
  store i64 %98, i64* %6, align 8
  br label %110

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @arch_scale_freq_capacity(i32 %100)
  store i64 %101, i64* %9, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @arch_scale_cpu_capacity(i32 %102)
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @cap_scale(i64 %104, i64 %105)
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @cap_scale(i64 %107, i64 %108)
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %99, %93
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %113 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  br label %118

118:                                              ; preds = %110, %47
  %119 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %120 = call i64 @dl_runtime_exceeded(%struct.sched_dl_entity* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %124 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %176

127:                                              ; preds = %122, %118
  %128 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %129 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %128, i32 0, i32 2
  store i32 1, i32* %129, align 8
  %130 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %131 = call i64 @dl_runtime_exceeded(%struct.sched_dl_entity* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %135 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SCHED_FLAG_DL_OVERRUN, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %142 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %133, %127
  %144 = load %struct.rq*, %struct.rq** %2, align 8
  %145 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %146 = call i32 @__dequeue_task_dl(%struct.rq* %144, %struct.task_struct* %145, i32 0)
  %147 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %148 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %143
  %152 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %153 = call i32 @start_dl_timer(%struct.task_struct* %152)
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %151, %143
  %157 = phi i1 [ true, %143 ], [ %155, %151 ]
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.rq*, %struct.rq** %2, align 8
  %163 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %164 = load i32, i32* @ENQUEUE_REPLENISH, align 4
  %165 = call i32 @enqueue_task_dl(%struct.rq* %162, %struct.task_struct* %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %168 = load %struct.rq*, %struct.rq** %2, align 8
  %169 = getelementptr inbounds %struct.rq, %struct.rq* %168, i32 0, i32 1
  %170 = call i32 @is_leftmost(%struct.task_struct* %167, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %166
  %173 = load %struct.rq*, %struct.rq** %2, align 8
  %174 = call i32 @resched_curr(%struct.rq* %173)
  br label %175

175:                                              ; preds = %172, %166
  br label %176

176:                                              ; preds = %175, %122
  %177 = call i64 (...) @rt_bandwidth_enabled()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %176
  %180 = load %struct.rq*, %struct.rq** %2, align 8
  %181 = getelementptr inbounds %struct.rq, %struct.rq* %180, i32 0, i32 0
  store %struct.rt_rq* %181, %struct.rt_rq** %11, align 8
  %182 = load %struct.rt_rq*, %struct.rt_rq** %11, align 8
  %183 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %182, i32 0, i32 0
  %184 = call i32 @raw_spin_lock(i32* %183)
  %185 = load %struct.rt_rq*, %struct.rt_rq** %11, align 8
  %186 = call i64 @sched_rt_bandwidth_account(%struct.rt_rq* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %179
  %189 = load i64, i64* %5, align 8
  %190 = load %struct.rt_rq*, %struct.rt_rq** %11, align 8
  %191 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %189
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %191, align 4
  br label %196

196:                                              ; preds = %188, %179
  %197 = load %struct.rt_rq*, %struct.rt_rq** %11, align 8
  %198 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %197, i32 0, i32 0
  %199 = call i32 @raw_spin_unlock(i32* %198)
  br label %200

200:                                              ; preds = %26, %48, %84, %196, %176
  ret void
}

declare dso_local i32 @cpu_of(%struct.rq*) #1

declare dso_local i32 @dl_task(%struct.task_struct*) #1

declare dso_local i32 @on_dl_rq(%struct.sched_dl_entity*) #1

declare dso_local i64 @rq_clock_task(%struct.rq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedstat_set(i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @account_group_exec_runtime(%struct.task_struct*, i64) #1

declare dso_local i32 @cgroup_account_cputime(%struct.task_struct*, i64) #1

declare dso_local i64 @dl_entity_is_special(%struct.sched_dl_entity*) #1

declare dso_local i64 @grub_reclaim(i64, %struct.rq*, %struct.sched_dl_entity*) #1

declare dso_local i64 @arch_scale_freq_capacity(i32) #1

declare dso_local i64 @arch_scale_cpu_capacity(i32) #1

declare dso_local i64 @cap_scale(i64, i64) #1

declare dso_local i64 @dl_runtime_exceeded(%struct.sched_dl_entity*) #1

declare dso_local i32 @__dequeue_task_dl(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @start_dl_timer(%struct.task_struct*) #1

declare dso_local i32 @enqueue_task_dl(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @is_leftmost(%struct.task_struct*, i32*) #1

declare dso_local i32 @resched_curr(%struct.rq*) #1

declare dso_local i64 @rt_bandwidth_enabled(...) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @sched_rt_bandwidth_account(%struct.rt_rq*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
