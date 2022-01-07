; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posix_timer_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posix_timer_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.signal_struct* }
%struct.signal_struct = type { i32 }
%struct.hlist_head = type { i32 }
%struct.k_itimer = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@posix_timers_hashtable = common dso_local global %struct.hlist_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.k_itimer* (i32)* @posix_timer_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.k_itimer* @posix_timer_by_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.signal_struct*, align 8
  %4 = alloca %struct.hlist_head*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  store %struct.signal_struct* %7, %struct.signal_struct** %3, align 8
  %8 = load %struct.hlist_head*, %struct.hlist_head** @posix_timers_hashtable, align 8
  %9 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @hash(%struct.signal_struct* %9, i32 %10)
  %12 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %8, i64 %11
  store %struct.hlist_head* %12, %struct.hlist_head** %4, align 8
  %13 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %14 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.k_itimer* @__posix_timers_find(%struct.hlist_head* %13, %struct.signal_struct* %14, i32 %15)
  ret %struct.k_itimer* %16
}

declare dso_local i64 @hash(%struct.signal_struct*, i32) #1

declare dso_local %struct.k_itimer* @__posix_timers_find(%struct.hlist_head*, %struct.signal_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
