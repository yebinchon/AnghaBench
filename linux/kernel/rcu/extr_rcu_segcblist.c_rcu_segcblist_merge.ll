; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_merge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_segcblist = type { i32 }
%struct.rcu_cblist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_segcblist_merge(%struct.rcu_segcblist* %0, %struct.rcu_segcblist* %1) #0 {
  %3 = alloca %struct.rcu_segcblist*, align 8
  %4 = alloca %struct.rcu_segcblist*, align 8
  %5 = alloca %struct.rcu_cblist, align 4
  %6 = alloca %struct.rcu_cblist, align 4
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %3, align 8
  store %struct.rcu_segcblist* %1, %struct.rcu_segcblist** %4, align 8
  %7 = call i32 @rcu_cblist_init(%struct.rcu_cblist* %5)
  %8 = call i32 @rcu_cblist_init(%struct.rcu_cblist* %6)
  %9 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %10 = call i32 @rcu_segcblist_extract_count(%struct.rcu_segcblist* %9, %struct.rcu_cblist* %5)
  %11 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %12 = call i32 @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist* %11, %struct.rcu_cblist* %5)
  %13 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %14 = call i32 @rcu_segcblist_extract_pend_cbs(%struct.rcu_segcblist* %13, %struct.rcu_cblist* %6)
  %15 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %16 = call i32 @rcu_segcblist_insert_count(%struct.rcu_segcblist* %15, %struct.rcu_cblist* %5)
  %17 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %18 = call i32 @rcu_segcblist_insert_done_cbs(%struct.rcu_segcblist* %17, %struct.rcu_cblist* %5)
  %19 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %20 = call i32 @rcu_segcblist_insert_pend_cbs(%struct.rcu_segcblist* %19, %struct.rcu_cblist* %6)
  %21 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %4, align 8
  %22 = call i32 @rcu_segcblist_init(%struct.rcu_segcblist* %21)
  ret void
}

declare dso_local i32 @rcu_cblist_init(%struct.rcu_cblist*) #1

declare dso_local i32 @rcu_segcblist_extract_count(%struct.rcu_segcblist*, %struct.rcu_cblist*) #1

declare dso_local i32 @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist*, %struct.rcu_cblist*) #1

declare dso_local i32 @rcu_segcblist_extract_pend_cbs(%struct.rcu_segcblist*, %struct.rcu_cblist*) #1

declare dso_local i32 @rcu_segcblist_insert_count(%struct.rcu_segcblist*, %struct.rcu_cblist*) #1

declare dso_local i32 @rcu_segcblist_insert_done_cbs(%struct.rcu_segcblist*, %struct.rcu_cblist*) #1

declare dso_local i32 @rcu_segcblist_insert_pend_cbs(%struct.rcu_segcblist*, %struct.rcu_cblist*) #1

declare dso_local i32 @rcu_segcblist_init(%struct.rcu_segcblist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
