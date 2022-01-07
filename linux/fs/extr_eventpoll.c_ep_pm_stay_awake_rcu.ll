; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_pm_stay_awake_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_pm_stay_awake_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epitem = type { i32 }
%struct.wakeup_source = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.epitem*)* @ep_pm_stay_awake_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_pm_stay_awake_rcu(%struct.epitem* %0) #0 {
  %2 = alloca %struct.epitem*, align 8
  %3 = alloca %struct.wakeup_source*, align 8
  store %struct.epitem* %0, %struct.epitem** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.epitem*, %struct.epitem** %2, align 8
  %6 = getelementptr inbounds %struct.epitem, %struct.epitem* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.wakeup_source* @rcu_dereference(i32 %7)
  store %struct.wakeup_source* %8, %struct.wakeup_source** %3, align 8
  %9 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %10 = icmp ne %struct.wakeup_source* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.wakeup_source*, %struct.wakeup_source** %3, align 8
  %13 = call i32 @__pm_stay_awake(%struct.wakeup_source* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.wakeup_source* @rcu_dereference(i32) #1

declare dso_local i32 @__pm_stay_awake(%struct.wakeup_source*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
