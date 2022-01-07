; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_extract_count.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_extract_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_segcblist = type { i64 }
%struct.rcu_cblist = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_segcblist_extract_count(%struct.rcu_segcblist* %0, %struct.rcu_cblist* %1) #0 {
  %3 = alloca %struct.rcu_segcblist*, align 8
  %4 = alloca %struct.rcu_cblist*, align 8
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %3, align 8
  store %struct.rcu_cblist* %1, %struct.rcu_cblist** %4, align 8
  %5 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %6 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %9 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %15 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %17 = call i32 @rcu_segcblist_xchg_len(%struct.rcu_segcblist* %16, i32 0)
  %18 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %19 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @rcu_segcblist_xchg_len(%struct.rcu_segcblist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
