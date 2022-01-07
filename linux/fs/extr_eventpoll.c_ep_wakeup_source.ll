; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_wakeup_source.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_wakeup_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakeup_source = type { i32 }
%struct.epitem = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wakeup_source* (%struct.epitem*)* @ep_wakeup_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wakeup_source* @ep_wakeup_source(%struct.epitem* %0) #0 {
  %2 = alloca %struct.epitem*, align 8
  store %struct.epitem* %0, %struct.epitem** %2, align 8
  %3 = load %struct.epitem*, %struct.epitem** %2, align 8
  %4 = getelementptr inbounds %struct.epitem, %struct.epitem* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.epitem*, %struct.epitem** %2, align 8
  %7 = getelementptr inbounds %struct.epitem, %struct.epitem* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @lockdep_is_held(i32* %9)
  %11 = call %struct.wakeup_source* @rcu_dereference_check(i32 %5, i32 %10)
  ret %struct.wakeup_source* %11
}

declare dso_local %struct.wakeup_source* @rcu_dereference_check(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
