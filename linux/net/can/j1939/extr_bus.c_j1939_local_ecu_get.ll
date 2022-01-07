; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_local_ecu_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_local_ecu_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.j1939_ecu = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @j1939_local_ecu_get(%struct.j1939_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.j1939_ecu*, align 8
  %8 = alloca i32, align 4
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %10 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %9, i32 0, i32 0
  %11 = call i32 @write_lock_bh(i32* %10)
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @j1939_address_is_unicast(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %17 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %64

28:                                               ; preds = %24
  %29 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.j1939_ecu* @j1939_ecu_get_by_name_locked(%struct.j1939_priv* %29, i32 %30)
  store %struct.j1939_ecu* %31, %struct.j1939_ecu** %7, align 8
  %32 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %33 = icmp ne %struct.j1939_ecu* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.j1939_ecu* @j1939_ecu_create_locked(%struct.j1939_priv* %35, i32 %36)
  store %struct.j1939_ecu* %37, %struct.j1939_ecu** %7, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %40 = call i32 @PTR_ERR_OR_ZERO(%struct.j1939_ecu* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %64

44:                                               ; preds = %38
  %45 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %46 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %50 = call i64 @j1939_ecu_is_mapped_locked(%struct.j1939_ecu* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %54 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %57 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %52, %44
  br label %64

64:                                               ; preds = %63, %43, %27
  %65 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %66 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %65, i32 0, i32 0
  %67 = call i32 @write_unlock_bh(i32* %66)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @j1939_address_is_unicast(i64) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_get_by_name_locked(%struct.j1939_priv*, i32) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_create_locked(%struct.j1939_priv*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.j1939_ecu*) #1

declare dso_local i64 @j1939_ecu_is_mapped_locked(%struct.j1939_ecu*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
