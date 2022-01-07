; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_barrier_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_barrier_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.rcu_data = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@rcu_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@rcu_state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@rcu_barrier_callback = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"IRQNQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rcu_barrier_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_barrier_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rcu_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.rcu_data* @raw_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %4, %struct.rcu_data** %3, align 8
  %5 = call i32 @TPS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rcu_state, i32 0, i32 0), align 4
  %7 = call i32 @rcu_barrier_trace(i32 %5, i32 -1, i32 %6)
  %8 = load i32, i32* @rcu_barrier_callback, align 4
  %9 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %10 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %13 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %12, i32 0, i32 0
  %14 = call i32 @debug_rcu_head_queue(%struct.TYPE_6__* %13)
  %15 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %16 = call i32 @rcu_nocb_lock(%struct.rcu_data* %15)
  %17 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = call i32 @rcu_nocb_flush_bypass(%struct.rcu_data* %17, i32* null, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %25 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %24, i32 0, i32 1
  %26 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %27 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %26, i32 0, i32 0
  %28 = call i64 @rcu_segcblist_entrain(i32* %25, %struct.TYPE_6__* %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rcu_state, i32 0, i32 1))
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %34 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %33, i32 0, i32 0
  %35 = call i32 @debug_rcu_head_unqueue(%struct.TYPE_6__* %34)
  %36 = call i32 @TPS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rcu_state, i32 0, i32 0), align 4
  %38 = call i32 @rcu_barrier_trace(i32 %36, i32 -1, i32 %37)
  br label %39

39:                                               ; preds = %32, %30
  %40 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %41 = call i32 @rcu_nocb_unlock(%struct.rcu_data* %40)
  ret void
}

declare dso_local %struct.rcu_data* @raw_cpu_ptr(i32*) #1

declare dso_local i32 @rcu_barrier_trace(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @debug_rcu_head_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @rcu_nocb_lock(%struct.rcu_data*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_nocb_flush_bypass(%struct.rcu_data*, i32*, i32) #1

declare dso_local i64 @rcu_segcblist_entrain(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @debug_rcu_head_unqueue(%struct.TYPE_6__*) #1

declare dso_local i32 @rcu_nocb_unlock(%struct.rcu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
