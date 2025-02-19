; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_call_rcu_zapped.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_call_rcu_zapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.pending_free* }
%struct.pending_free = type { i32 }

@delayed_free = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@free_zapped_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_free*)* @call_rcu_zapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_rcu_zapped(%struct.pending_free* %0) #0 {
  %2 = alloca %struct.pending_free*, align 8
  store %struct.pending_free* %0, %struct.pending_free** %2, align 8
  %3 = call i32 (...) @inside_selftest()
  %4 = call i32 @WARN_ON_ONCE(i32 %3)
  %5 = load %struct.pending_free*, %struct.pending_free** %2, align 8
  %6 = getelementptr inbounds %struct.pending_free, %struct.pending_free* %5, i32 0, i32 0
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %27

14:                                               ; preds = %10
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 0), align 8
  %15 = load %struct.pending_free*, %struct.pending_free** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 3), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 1), align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pending_free, %struct.pending_free* %15, i64 %17
  %19 = load %struct.pending_free*, %struct.pending_free** %2, align 8
  %20 = icmp ne %struct.pending_free* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 1), align 4
  %24 = xor i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 1), align 4
  %25 = load i32, i32* @free_zapped_rcu, align 4
  %26 = call i32 @call_rcu(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 2), i32 %25)
  br label %27

27:                                               ; preds = %14, %13, %9
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @inside_selftest(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
