; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_unmap_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_unmap_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_ecu = type { i64, i64, %struct.j1939_priv* }
%struct.j1939_priv = type { %struct.j1939_addr_ent*, i32 }
%struct.j1939_addr_ent = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j1939_ecu_unmap_locked(%struct.j1939_ecu* %0) #0 {
  %2 = alloca %struct.j1939_ecu*, align 8
  %3 = alloca %struct.j1939_priv*, align 8
  %4 = alloca %struct.j1939_addr_ent*, align 8
  store %struct.j1939_ecu* %0, %struct.j1939_ecu** %2, align 8
  %5 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %6 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %5, i32 0, i32 2
  %7 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  store %struct.j1939_priv* %7, %struct.j1939_priv** %3, align 8
  %8 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %9 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %8, i32 0, i32 1
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %12 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @j1939_address_is_unicast(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %19 = call i32 @j1939_ecu_is_mapped_locked(%struct.j1939_ecu* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %43

22:                                               ; preds = %17
  %23 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %24 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %23, i32 0, i32 0
  %25 = load %struct.j1939_addr_ent*, %struct.j1939_addr_ent** %24, align 8
  %26 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %27 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.j1939_addr_ent, %struct.j1939_addr_ent* %25, i64 %28
  store %struct.j1939_addr_ent* %29, %struct.j1939_addr_ent** %4, align 8
  %30 = load %struct.j1939_addr_ent*, %struct.j1939_addr_ent** %4, align 8
  %31 = getelementptr inbounds %struct.j1939_addr_ent, %struct.j1939_addr_ent* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %33 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.j1939_addr_ent*, %struct.j1939_addr_ent** %4, align 8
  %36 = getelementptr inbounds %struct.j1939_addr_ent, %struct.j1939_addr_ent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %42 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %41)
  br label %43

43:                                               ; preds = %22, %21, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @j1939_address_is_unicast(i64) #1

declare dso_local i32 @j1939_ecu_is_mapped_locked(%struct.j1939_ecu*) #1

declare dso_local i32 @j1939_ecu_put(%struct.j1939_ecu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
