; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_exp.h_rcu_exp_gp_seq_snap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_exp.h_rcu_exp_gp_seq_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"snap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @rcu_exp_gp_seq_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rcu_exp_gp_seq_snap() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @smp_mb()
  %3 = call i64 @rcu_seq_snap(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1))
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @TPS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @trace_rcu_exp_grace_period(i32 %4, i64 %5, i32 %6)
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @rcu_seq_snap(i32*) #1

declare dso_local i32 @trace_rcu_exp_grace_period(i32, i64, i32) #1

declare dso_local i32 @TPS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
