; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_local_ecu_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_local_ecu_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.j1939_ecu = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j1939_local_ecu_put(%struct.j1939_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.j1939_ecu*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %9 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %8, i32 0, i32 0
  %10 = call i32 @write_lock_bh(i32* %9)
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @j1939_address_is_unicast(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %16 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %14, %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %60

27:                                               ; preds = %23
  %28 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.j1939_ecu* @j1939_ecu_find_by_name_locked(%struct.j1939_priv* %28, i32 %29)
  store %struct.j1939_ecu* %30, %struct.j1939_ecu** %7, align 8
  %31 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %32 = icmp ne %struct.j1939_ecu* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %60

38:                                               ; preds = %27
  %39 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %40 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %44 = call i64 @j1939_ecu_is_mapped_locked(%struct.j1939_ecu* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %48 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %51 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %46, %38
  %58 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %59 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %58)
  br label %60

60:                                               ; preds = %57, %37, %26
  %61 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %62 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %61, i32 0, i32 0
  %63 = call i32 @write_unlock_bh(i32* %62)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @j1939_address_is_unicast(i64) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_find_by_name_locked(%struct.j1939_priv*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @j1939_ecu_is_mapped_locked(%struct.j1939_ecu*) #1

declare dso_local i32 @j1939_ecu_put(%struct.j1939_ecu*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
