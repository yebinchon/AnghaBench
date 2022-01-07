; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_first_pend_cb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_first_pend_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_head = type { i32 }
%struct.rcu_segcblist = type { %struct.rcu_head*** }

@RCU_DONE_TAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rcu_head* @rcu_segcblist_first_pend_cb(%struct.rcu_segcblist* %0) #0 {
  %2 = alloca %struct.rcu_head*, align 8
  %3 = alloca %struct.rcu_segcblist*, align 8
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %3, align 8
  %4 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %5 = call i64 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %9 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %8, i32 0, i32 0
  %10 = load %struct.rcu_head***, %struct.rcu_head**** %9, align 8
  %11 = load i64, i64* @RCU_DONE_TAIL, align 8
  %12 = getelementptr inbounds %struct.rcu_head**, %struct.rcu_head*** %10, i64 %11
  %13 = load %struct.rcu_head**, %struct.rcu_head*** %12, align 8
  %14 = load %struct.rcu_head*, %struct.rcu_head** %13, align 8
  store %struct.rcu_head* %14, %struct.rcu_head** %2, align 8
  br label %16

15:                                               ; preds = %1
  store %struct.rcu_head* null, %struct.rcu_head** %2, align 8
  br label %16

16:                                               ; preds = %15, %7
  %17 = load %struct.rcu_head*, %struct.rcu_head** %2, align 8
  ret %struct.rcu_head* %17
}

declare dso_local i64 @rcu_segcblist_is_enabled(%struct.rcu_segcblist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
