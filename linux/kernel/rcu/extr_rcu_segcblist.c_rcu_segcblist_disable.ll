; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_segcblist = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_segcblist_disable(%struct.rcu_segcblist* %0) #0 {
  %2 = alloca %struct.rcu_segcblist*, align 8
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %2, align 8
  %3 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %4 = call i32 @rcu_segcblist_empty(%struct.rcu_segcblist* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %10 = call i32 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* %9)
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %13 = call i32 @rcu_segcblist_n_lazy_cbs(%struct.rcu_segcblist* %12)
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %16 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_segcblist_empty(%struct.rcu_segcblist*) #1

declare dso_local i32 @rcu_segcblist_n_cbs(%struct.rcu_segcblist*) #1

declare dso_local i32 @rcu_segcblist_n_lazy_cbs(%struct.rcu_segcblist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
