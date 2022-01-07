; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32, i32, i32 }
%struct.work_struct = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.pool_workqueue = type { i64, i64, i64, %struct.worker_pool*, %struct.list_head, i32*, i32, %struct.workqueue_struct* }
%struct.worker_pool = type { i32, i32, %struct.list_head }
%struct.worker = type { %struct.pool_workqueue* }

@__WQ_DRAINING = common dso_local global i32 0, align 4
@WORK_CPU_UNBOUND = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"workqueue: per-cpu pwq for %s on cpu%d has 0 refcnt\00", align 1
@jiffies = common dso_local global i32 0, align 4
@WORK_STRUCT_DELAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.workqueue_struct*, %struct.work_struct*)* @__queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__queue_work(i32 %0, %struct.workqueue_struct* %1, %struct.work_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.workqueue_struct*, align 8
  %6 = alloca %struct.work_struct*, align 8
  %7 = alloca %struct.pool_workqueue*, align 8
  %8 = alloca %struct.worker_pool*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.worker*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %5, align 8
  store %struct.work_struct* %2, %struct.work_struct** %6, align 8
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %11, align 4
  %14 = call i32 (...) @lockdep_assert_irqs_disabled()
  %15 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %16 = call i32 @debug_work_activate(%struct.work_struct* %15)
  %17 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %18 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @__WQ_DRAINING, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %26 = call i32 @is_chained_work(%struct.workqueue_struct* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %215

33:                                               ; preds = %24, %3
  %34 = call i32 (...) @rcu_read_lock()
  br label %35

35:                                               ; preds = %124, %33
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @WORK_CPU_UNBOUND, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 (...) @raw_smp_processor_id()
  %41 = call i32 @wq_select_unbound_cpu(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %44 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WQ_UNBOUND, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %51 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.pool_workqueue* @per_cpu_ptr(i32 %52, i32 %53)
  store %struct.pool_workqueue* %54, %struct.pool_workqueue** %7, align 8
  br label %60

55:                                               ; preds = %42
  %56 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @cpu_to_node(i32 %57)
  %59 = call %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* %56, i32 %58)
  store %struct.pool_workqueue* %59, %struct.pool_workqueue** %7, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %62 = call %struct.worker_pool* @get_work_pool(%struct.work_struct* %61)
  store %struct.worker_pool* %62, %struct.worker_pool** %8, align 8
  %63 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %64 = icmp ne %struct.worker_pool* %63, null
  br i1 %64, label %65, label %102

65:                                               ; preds = %60
  %66 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %67 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %68 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %67, i32 0, i32 3
  %69 = load %struct.worker_pool*, %struct.worker_pool** %68, align 8
  %70 = icmp ne %struct.worker_pool* %66, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %65
  %72 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %73 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %72, i32 0, i32 0
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %76 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %77 = call %struct.worker* @find_worker_executing_work(%struct.worker_pool* %75, %struct.work_struct* %76)
  store %struct.worker* %77, %struct.worker** %12, align 8
  %78 = load %struct.worker*, %struct.worker** %12, align 8
  %79 = icmp ne %struct.worker* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load %struct.worker*, %struct.worker** %12, align 8
  %82 = getelementptr inbounds %struct.worker, %struct.worker* %81, i32 0, i32 0
  %83 = load %struct.pool_workqueue*, %struct.pool_workqueue** %82, align 8
  %84 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %83, i32 0, i32 7
  %85 = load %struct.workqueue_struct*, %struct.workqueue_struct** %84, align 8
  %86 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %87 = icmp eq %struct.workqueue_struct* %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.worker*, %struct.worker** %12, align 8
  %90 = getelementptr inbounds %struct.worker, %struct.worker* %89, i32 0, i32 0
  %91 = load %struct.pool_workqueue*, %struct.pool_workqueue** %90, align 8
  store %struct.pool_workqueue* %91, %struct.pool_workqueue** %7, align 8
  br label %101

92:                                               ; preds = %80, %71
  %93 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %94 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %97 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %96, i32 0, i32 3
  %98 = load %struct.worker_pool*, %struct.worker_pool** %97, align 8
  %99 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %98, i32 0, i32 0
  %100 = call i32 @spin_lock(i32* %99)
  br label %101

101:                                              ; preds = %92, %88
  br label %108

102:                                              ; preds = %65, %60
  %103 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %104 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %103, i32 0, i32 3
  %105 = load %struct.worker_pool*, %struct.worker_pool** %104, align 8
  %106 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %105, i32 0, i32 0
  %107 = call i32 @spin_lock(i32* %106)
  br label %108

108:                                              ; preds = %102, %101
  %109 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %110 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %108
  %118 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %119 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @WQ_UNBOUND, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %126 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %125, i32 0, i32 3
  %127 = load %struct.worker_pool*, %struct.worker_pool** %126, align 8
  %128 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = call i32 (...) @cpu_relax()
  br label %35

131:                                              ; preds = %117
  %132 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %133 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %108
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %140 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %141 = call i32 @trace_workqueue_queue_work(i32 %138, %struct.pool_workqueue* %139, %struct.work_struct* %140)
  %142 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %143 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %142, i32 0, i32 0
  %144 = call i64 @list_empty(%struct.list_head* %143)
  %145 = icmp ne i64 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i64 @WARN_ON(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  br label %208

151:                                              ; preds = %137
  %152 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %153 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %156 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %162 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @work_color_to_flags(i64 %163)
  store i32 %164, i32* %10, align 4
  %165 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %166 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %169 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %167, %170
  %172 = zext i1 %171 to i32
  %173 = call i64 @likely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %151
  %176 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %177 = call i32 @trace_workqueue_activate_work(%struct.work_struct* %176)
  %178 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %179 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  %182 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %183 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %182, i32 0, i32 3
  %184 = load %struct.worker_pool*, %struct.worker_pool** %183, align 8
  %185 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %184, i32 0, i32 2
  store %struct.list_head* %185, %struct.list_head** %9, align 8
  %186 = load %struct.list_head*, %struct.list_head** %9, align 8
  %187 = call i64 @list_empty(%struct.list_head* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %175
  %190 = load i32, i32* @jiffies, align 4
  %191 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %192 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %191, i32 0, i32 3
  %193 = load %struct.worker_pool*, %struct.worker_pool** %192, align 8
  %194 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %193, i32 0, i32 1
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %189, %175
  br label %202

196:                                              ; preds = %151
  %197 = load i32, i32* @WORK_STRUCT_DELAYED, align 4
  %198 = load i32, i32* %10, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %10, align 4
  %200 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %201 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %200, i32 0, i32 4
  store %struct.list_head* %201, %struct.list_head** %9, align 8
  br label %202

202:                                              ; preds = %196, %195
  %203 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %204 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %205 = load %struct.list_head*, %struct.list_head** %9, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @insert_work(%struct.pool_workqueue* %203, %struct.work_struct* %204, %struct.list_head* %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %150
  %209 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %210 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %209, i32 0, i32 3
  %211 = load %struct.worker_pool*, %struct.worker_pool** %210, align 8
  %212 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %211, i32 0, i32 0
  %213 = call i32 @spin_unlock(i32* %212)
  %214 = call i32 (...) @rcu_read_unlock()
  br label %215

215:                                              ; preds = %208, %32
  ret void
}

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local i32 @debug_work_activate(%struct.work_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_chained_work(%struct.workqueue_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @wq_select_unbound_cpu(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.pool_workqueue* @per_cpu_ptr(i32, i32) #1

declare dso_local %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct*, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.worker_pool* @get_work_pool(%struct.work_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.worker* @find_worker_executing_work(%struct.worker_pool*, %struct.work_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @trace_workqueue_queue_work(i32, %struct.pool_workqueue*, %struct.work_struct*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @work_color_to_flags(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @trace_workqueue_activate_work(%struct.work_struct*) #1

declare dso_local i32 @insert_work(%struct.pool_workqueue*, %struct.work_struct*, %struct.list_head*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
