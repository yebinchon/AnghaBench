; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_fwd_prog_cbfree.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_fwd_prog_cbfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_fwd_cb = type { %struct.rcu_fwd_cb* }

@rcu_fwd_lock = common dso_local global i32 0, align 4
@rcu_fwd_cb_head = common dso_local global %struct.rcu_fwd_cb* null, align 8
@rcu_fwd_cb_tail = common dso_local global %struct.rcu_fwd_cb** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @rcu_torture_fwd_prog_cbfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rcu_torture_fwd_prog_cbfree() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.rcu_fwd_cb*, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %20, %0
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @rcu_fwd_lock, i64 %5)
  %7 = load %struct.rcu_fwd_cb*, %struct.rcu_fwd_cb** @rcu_fwd_cb_head, align 8
  store %struct.rcu_fwd_cb* %7, %struct.rcu_fwd_cb** %3, align 8
  %8 = load %struct.rcu_fwd_cb*, %struct.rcu_fwd_cb** %3, align 8
  %9 = icmp ne %struct.rcu_fwd_cb* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* @rcu_fwd_lock, i64 %11)
  br label %29

13:                                               ; preds = %4
  %14 = load %struct.rcu_fwd_cb*, %struct.rcu_fwd_cb** %3, align 8
  %15 = getelementptr inbounds %struct.rcu_fwd_cb, %struct.rcu_fwd_cb* %14, i32 0, i32 0
  %16 = load %struct.rcu_fwd_cb*, %struct.rcu_fwd_cb** %15, align 8
  store %struct.rcu_fwd_cb* %16, %struct.rcu_fwd_cb** @rcu_fwd_cb_head, align 8
  %17 = load %struct.rcu_fwd_cb*, %struct.rcu_fwd_cb** @rcu_fwd_cb_head, align 8
  %18 = icmp ne %struct.rcu_fwd_cb* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.rcu_fwd_cb** @rcu_fwd_cb_head, %struct.rcu_fwd_cb*** @rcu_fwd_cb_tail, align 8
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @rcu_fwd_lock, i64 %21)
  %23 = load %struct.rcu_fwd_cb*, %struct.rcu_fwd_cb** %3, align 8
  %24 = call i32 @kfree(%struct.rcu_fwd_cb* %23)
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @rcu_torture_fwd_prog_cond_resched(i64 %27)
  br label %4

29:                                               ; preds = %10
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.rcu_fwd_cb*) #1

declare dso_local i32 @rcu_torture_fwd_prog_cond_resched(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
