; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c___delist_rt_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c___delist_rt_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i64, i32 }
%struct.rt_prio_array = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_rt_entity*, %struct.rt_prio_array*)* @__delist_rt_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__delist_rt_entity(%struct.sched_rt_entity* %0, %struct.rt_prio_array* %1) #0 {
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca %struct.rt_prio_array*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %3, align 8
  store %struct.rt_prio_array* %1, %struct.rt_prio_array** %4, align 8
  %5 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %6 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %5, i32 0, i32 1
  %7 = call i32 @list_del_init(i32* %6)
  %8 = load %struct.rt_prio_array*, %struct.rt_prio_array** %4, align 8
  %9 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %12 = call i64 @rt_se_prio(%struct.sched_rt_entity* %11)
  %13 = add nsw i64 %10, %12
  %14 = call i64 @list_empty(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %18 = call i64 @rt_se_prio(%struct.sched_rt_entity* %17)
  %19 = load %struct.rt_prio_array*, %struct.rt_prio_array** %4, align 8
  %20 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @__clear_bit(i64 %18, i32 %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %25 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i64) #1

declare dso_local i64 @rt_se_prio(%struct.sched_rt_entity*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
