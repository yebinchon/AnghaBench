; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_swevent_head_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_swevent_head_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.swevent_htable = type { i32 }
%struct.swevent_hlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.swevent_htable*, i32, i32)* @find_swevent_head_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @find_swevent_head_rcu(%struct.swevent_htable* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hlist_head*, align 8
  %5 = alloca %struct.swevent_htable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.swevent_hlist*, align 8
  store %struct.swevent_htable* %0, %struct.swevent_htable** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.swevent_htable*, %struct.swevent_htable** %5, align 8
  %10 = getelementptr inbounds %struct.swevent_htable, %struct.swevent_htable* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.swevent_hlist* @rcu_dereference(i32 %11)
  store %struct.swevent_hlist* %12, %struct.swevent_hlist** %8, align 8
  %13 = load %struct.swevent_hlist*, %struct.swevent_hlist** %8, align 8
  %14 = icmp ne %struct.swevent_hlist* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.hlist_head* null, %struct.hlist_head** %4, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.swevent_hlist*, %struct.swevent_hlist** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.hlist_head* @__find_swevent_head(%struct.swevent_hlist* %17, i32 %18, i32 %19)
  store %struct.hlist_head* %20, %struct.hlist_head** %4, align 8
  br label %21

21:                                               ; preds = %16, %15
  %22 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  ret %struct.hlist_head* %22
}

declare dso_local %struct.swevent_hlist* @rcu_dereference(i32) #1

declare dso_local %struct.hlist_head* @__find_swevent_head(%struct.swevent_hlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
