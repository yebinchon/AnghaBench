; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_create_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_create_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_ecu = type { i32, %struct.j1939_priv*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.j1939_priv = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@J1939_IDLE_ADDR = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_SOFT = common dso_local global i32 0, align 4
@j1939_ecu_timer_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.j1939_ecu* @j1939_ecu_create_locked(%struct.j1939_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.j1939_ecu*, align 8
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.j1939_ecu*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %8 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = call i32 (...) @gfp_any()
  %11 = call %struct.j1939_ecu* @kzalloc(i32 32, i32 %10)
  store %struct.j1939_ecu* %11, %struct.j1939_ecu** %6, align 8
  %12 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %13 = icmp ne %struct.j1939_ecu* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.j1939_ecu* @ERR_PTR(i32 %16)
  store %struct.j1939_ecu* %17, %struct.j1939_ecu** %3, align 8
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %20 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %19, i32 0, i32 5
  %21 = call i32 @kref_init(i32* %20)
  %22 = load i32, i32* @J1939_IDLE_ADDR, align 4
  %23 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %24 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %27 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %29 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %28, i32 0, i32 2
  %30 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %31 = load i32, i32* @HRTIMER_MODE_REL_SOFT, align 4
  %32 = call i32 @hrtimer_init(%struct.TYPE_2__* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @j1939_ecu_timer_handler, align 4
  %34 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %35 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %38 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %37, i32 0, i32 0
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %41 = call i32 @j1939_priv_get(%struct.j1939_priv* %40)
  %42 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %43 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %44 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %43, i32 0, i32 1
  store %struct.j1939_priv* %42, %struct.j1939_priv** %44, align 8
  %45 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %46 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %45, i32 0, i32 0
  %47 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %48 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  store %struct.j1939_ecu* %50, %struct.j1939_ecu** %3, align 8
  br label %51

51:                                               ; preds = %18, %14
  %52 = load %struct.j1939_ecu*, %struct.j1939_ecu** %3, align 8
  ret %struct.j1939_ecu* %52
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.j1939_ecu* @kzalloc(i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local %struct.j1939_ecu* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @j1939_priv_get(%struct.j1939_priv*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
