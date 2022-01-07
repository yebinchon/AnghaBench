; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_percpu-refcount.c___percpu_ref_switch_mode.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_percpu-refcount.c___percpu_ref_switch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_ref = type { i32, i64, i32 }

@percpu_ref_switch_lock = common dso_local global i32 0, align 4
@percpu_ref_switch_waitq = common dso_local global i32 0, align 4
@__PERCPU_REF_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.percpu_ref*, i32*)* @__percpu_ref_switch_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__percpu_ref_switch_mode(%struct.percpu_ref* %0, i32* %1) #0 {
  %3 = alloca %struct.percpu_ref*, align 8
  %4 = alloca i32*, align 8
  store %struct.percpu_ref* %0, %struct.percpu_ref** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @lockdep_assert_held(i32* @percpu_ref_switch_lock)
  %6 = load i32, i32* @percpu_ref_switch_waitq, align 4
  %7 = load %struct.percpu_ref*, %struct.percpu_ref** %3, align 8
  %8 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @percpu_ref_switch_lock, align 4
  %14 = call i32 @wait_event_lock_irq(i32 %6, i32 %12, i32 %13)
  %15 = load %struct.percpu_ref*, %struct.percpu_ref** %3, align 8
  %16 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.percpu_ref*, %struct.percpu_ref** %3, align 8
  %21 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @__PERCPU_REF_DEAD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19, %2
  %27 = load %struct.percpu_ref*, %struct.percpu_ref** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @__percpu_ref_switch_to_atomic(%struct.percpu_ref* %27, i32* %28)
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.percpu_ref*, %struct.percpu_ref** %3, align 8
  %32 = call i32 @__percpu_ref_switch_to_percpu(%struct.percpu_ref* %31)
  br label %33

33:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i32 @__percpu_ref_switch_to_atomic(%struct.percpu_ref*, i32*) #1

declare dso_local i32 @__percpu_ref_switch_to_percpu(%struct.percpu_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
