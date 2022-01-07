; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_pick_next_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_pick_next_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity* }
%struct.sched_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sched_entity* (%struct.cfs_rq*, %struct.sched_entity*)* @pick_next_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sched_entity* @pick_next_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca %struct.sched_entity*, align 8
  %7 = alloca %struct.sched_entity*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %8 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %9 = call %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* %8)
  store %struct.sched_entity* %9, %struct.sched_entity** %5, align 8
  %10 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %11 = icmp ne %struct.sched_entity* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %14 = icmp ne %struct.sched_entity* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %17 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %18 = call i64 @entity_before(%struct.sched_entity* %16, %struct.sched_entity* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  store %struct.sched_entity* %21, %struct.sched_entity** %5, align 8
  br label %22

22:                                               ; preds = %20, %15, %12
  %23 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  store %struct.sched_entity* %23, %struct.sched_entity** %6, align 8
  %24 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %25 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %24, i32 0, i32 2
  %26 = load %struct.sched_entity*, %struct.sched_entity** %25, align 8
  %27 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %28 = icmp eq %struct.sched_entity* %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %22
  %30 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %31 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %32 = icmp eq %struct.sched_entity* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %35 = call %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* %34)
  store %struct.sched_entity* %35, %struct.sched_entity** %7, align 8
  br label %52

36:                                               ; preds = %29
  %37 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %38 = call %struct.sched_entity* @__pick_next_entity(%struct.sched_entity* %37)
  store %struct.sched_entity* %38, %struct.sched_entity** %7, align 8
  %39 = load %struct.sched_entity*, %struct.sched_entity** %7, align 8
  %40 = icmp ne %struct.sched_entity* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %43 = icmp ne %struct.sched_entity* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %46 = load %struct.sched_entity*, %struct.sched_entity** %7, align 8
  %47 = call i64 @entity_before(%struct.sched_entity* %45, %struct.sched_entity* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %36
  %50 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  store %struct.sched_entity* %50, %struct.sched_entity** %7, align 8
  br label %51

51:                                               ; preds = %49, %44, %41
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.sched_entity*, %struct.sched_entity** %7, align 8
  %54 = icmp ne %struct.sched_entity* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.sched_entity*, %struct.sched_entity** %7, align 8
  %57 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %58 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %56, %struct.sched_entity* %57)
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load %struct.sched_entity*, %struct.sched_entity** %7, align 8
  store %struct.sched_entity* %61, %struct.sched_entity** %6, align 8
  br label %62

62:                                               ; preds = %60, %55, %52
  br label %63

63:                                               ; preds = %62, %22
  %64 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %65 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %64, i32 0, i32 1
  %66 = load %struct.sched_entity*, %struct.sched_entity** %65, align 8
  %67 = icmp ne %struct.sched_entity* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %70 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %69, i32 0, i32 1
  %71 = load %struct.sched_entity*, %struct.sched_entity** %70, align 8
  %72 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %73 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %71, %struct.sched_entity* %72)
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %77 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %76, i32 0, i32 1
  %78 = load %struct.sched_entity*, %struct.sched_entity** %77, align 8
  store %struct.sched_entity* %78, %struct.sched_entity** %6, align 8
  br label %79

79:                                               ; preds = %75, %68, %63
  %80 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %81 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %80, i32 0, i32 0
  %82 = load %struct.sched_entity*, %struct.sched_entity** %81, align 8
  %83 = icmp ne %struct.sched_entity* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %86 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %85, i32 0, i32 0
  %87 = load %struct.sched_entity*, %struct.sched_entity** %86, align 8
  %88 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %89 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %87, %struct.sched_entity* %88)
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %93 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %92, i32 0, i32 0
  %94 = load %struct.sched_entity*, %struct.sched_entity** %93, align 8
  store %struct.sched_entity* %94, %struct.sched_entity** %6, align 8
  br label %95

95:                                               ; preds = %91, %84, %79
  %96 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %97 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %98 = call i32 @clear_buddies(%struct.cfs_rq* %96, %struct.sched_entity* %97)
  %99 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  ret %struct.sched_entity* %99
}

declare dso_local %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq*) #1

declare dso_local i64 @entity_before(%struct.sched_entity*, %struct.sched_entity*) #1

declare dso_local %struct.sched_entity* @__pick_next_entity(%struct.sched_entity*) #1

declare dso_local i32 @wakeup_preempt_entity(%struct.sched_entity*, %struct.sched_entity*) #1

declare dso_local i32 @clear_buddies(%struct.cfs_rq*, %struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
