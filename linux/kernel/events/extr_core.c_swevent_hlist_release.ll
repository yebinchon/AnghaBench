; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_swevent_hlist_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_swevent_hlist_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swevent_htable = type { i32 }
%struct.swevent_hlist = type { i32 }

@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swevent_htable*)* @swevent_hlist_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swevent_hlist_release(%struct.swevent_htable* %0) #0 {
  %2 = alloca %struct.swevent_htable*, align 8
  %3 = alloca %struct.swevent_hlist*, align 8
  store %struct.swevent_htable* %0, %struct.swevent_htable** %2, align 8
  %4 = load %struct.swevent_htable*, %struct.swevent_htable** %2, align 8
  %5 = call %struct.swevent_hlist* @swevent_hlist_deref(%struct.swevent_htable* %4)
  store %struct.swevent_hlist* %5, %struct.swevent_hlist** %3, align 8
  %6 = load %struct.swevent_hlist*, %struct.swevent_hlist** %3, align 8
  %7 = icmp ne %struct.swevent_hlist* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.swevent_htable*, %struct.swevent_htable** %2, align 8
  %11 = getelementptr inbounds %struct.swevent_htable, %struct.swevent_htable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @RCU_INIT_POINTER(i32 %12, i32* null)
  %14 = load %struct.swevent_hlist*, %struct.swevent_hlist** %3, align 8
  %15 = load i32, i32* @rcu_head, align 4
  %16 = call i32 @kfree_rcu(%struct.swevent_hlist* %14, i32 %15)
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.swevent_hlist* @swevent_hlist_deref(%struct.swevent_htable*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.swevent_hlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
