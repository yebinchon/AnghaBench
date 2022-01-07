; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.rcu_head*, i32)* }
%struct.rcu_head = type { i32 }
%struct.timer_list = type { i32 }

@n_rcu_torture_timers = common dso_local global i32 0, align 4
@rcu_torture_timer_rand = common dso_local global i32 0, align 4
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@rcu_torture_timer_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rcu_torture_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_torture_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rcu_head*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = call i32 @atomic_long_inc(i32* @n_rcu_torture_timers)
  %5 = call i32 @this_cpu_ptr(i32* @rcu_torture_timer_rand)
  %6 = call i32 @rcu_torture_one_read(i32 %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.rcu_head*, i32)*, i32 (%struct.rcu_head*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.rcu_head*, i32)* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_NOWAIT, align 4
  %13 = call %struct.rcu_head* @kmalloc(i32 4, i32 %12)
  store %struct.rcu_head* %13, %struct.rcu_head** %3, align 8
  %14 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %15 = icmp ne %struct.rcu_head* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.rcu_head*, i32)*, i32 (%struct.rcu_head*, i32)** %18, align 8
  %20 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %21 = load i32, i32* @rcu_torture_timer_cb, align 4
  %22 = call i32 %19(%struct.rcu_head* %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %11
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @rcu_torture_one_read(i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local %struct.rcu_head* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
