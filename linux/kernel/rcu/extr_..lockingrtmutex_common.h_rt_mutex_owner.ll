; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_..lockingrtmutex_common.h_rt_mutex_owner.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_..lockingrtmutex_common.h_rt_mutex_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rt_mutex = type { i32 }

@RT_MUTEX_HAS_WAITERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rt_mutex*)* @rt_mutex_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex* %0) #0 {
  %2 = alloca %struct.rt_mutex*, align 8
  %3 = alloca i64, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %2, align 8
  %4 = load %struct.rt_mutex*, %struct.rt_mutex** %2, align 8
  %5 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @READ_ONCE(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @RT_MUTEX_HAS_WAITERS, align 8
  %10 = xor i64 %9, -1
  %11 = and i64 %8, %10
  %12 = inttoptr i64 %11 to %struct.task_struct*
  ret %struct.task_struct* %12
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
