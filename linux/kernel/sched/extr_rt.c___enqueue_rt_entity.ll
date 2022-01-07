; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c___enqueue_rt_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c___enqueue_rt_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i32, i32, i32 }
%struct.rt_rq = type { i32, %struct.rt_prio_array }
%struct.rt_prio_array = type { i32, %struct.list_head* }
%struct.list_head = type { i32 }

@ENQUEUE_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_rt_entity*, i32)* @__enqueue_rt_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__enqueue_rt_entity(%struct.sched_rt_entity* %0, i32 %1) #0 {
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_rq*, align 8
  %6 = alloca %struct.rt_prio_array*, align 8
  %7 = alloca %struct.rt_rq*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %10 = call %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* %9)
  store %struct.rt_rq* %10, %struct.rt_rq** %5, align 8
  %11 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %12 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %11, i32 0, i32 1
  store %struct.rt_prio_array* %12, %struct.rt_prio_array** %6, align 8
  %13 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %14 = call %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity* %13)
  store %struct.rt_rq* %14, %struct.rt_rq** %7, align 8
  %15 = load %struct.rt_prio_array*, %struct.rt_prio_array** %6, align 8
  %16 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %15, i32 0, i32 1
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  %18 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %19 = call i32 @rt_se_prio(%struct.sched_rt_entity* %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 %20
  store %struct.list_head* %21, %struct.list_head** %8, align 8
  %22 = load %struct.rt_rq*, %struct.rt_rq** %7, align 8
  %23 = icmp ne %struct.rt_rq* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load %struct.rt_rq*, %struct.rt_rq** %7, align 8
  %26 = call i64 @rt_rq_throttled(%struct.rt_rq* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.rt_rq*, %struct.rt_rq** %7, align 8
  %30 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %35 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %40 = load %struct.rt_prio_array*, %struct.rt_prio_array** %6, align 8
  %41 = call i32 @__delist_rt_entity(%struct.sched_rt_entity* %39, %struct.rt_prio_array* %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %81

43:                                               ; preds = %28, %2
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @move_entity(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %49 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ENQUEUE_HEAD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %58 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %57, i32 0, i32 2
  %59 = load %struct.list_head*, %struct.list_head** %8, align 8
  %60 = call i32 @list_add(i32* %58, %struct.list_head* %59)
  br label %66

61:                                               ; preds = %47
  %62 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %63 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %62, i32 0, i32 2
  %64 = load %struct.list_head*, %struct.list_head** %8, align 8
  %65 = call i32 @list_add_tail(i32* %63, %struct.list_head* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %68 = call i32 @rt_se_prio(%struct.sched_rt_entity* %67)
  %69 = load %struct.rt_prio_array*, %struct.rt_prio_array** %6, align 8
  %70 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  %73 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %74 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %43
  %76 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %77 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %79 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %80 = call i32 @inc_rt_tasks(%struct.sched_rt_entity* %78, %struct.rt_rq* %79)
  br label %81

81:                                               ; preds = %75, %42
  ret void
}

declare dso_local %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity*) #1

declare dso_local %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity*) #1

declare dso_local i32 @rt_se_prio(%struct.sched_rt_entity*) #1

declare dso_local i64 @rt_rq_throttled(%struct.rt_rq*) #1

declare dso_local i32 @__delist_rt_entity(%struct.sched_rt_entity*, %struct.rt_prio_array*) #1

declare dso_local i64 @move_entity(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @inc_rt_tasks(%struct.sched_rt_entity*, %struct.rt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
