; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_map_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_map_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_ecu = type { i64, i64, i32, %struct.j1939_priv* }
%struct.j1939_priv = type { i32, %struct.j1939_addr_ent*, i32 }
%struct.j1939_addr_ent = type { i32, %struct.j1939_ecu* }

@.str = private unnamed_addr constant [75 x i8] c"Trying to map already mapped ECU, addr: 0x%02x, name: 0x%016llx. Skip it.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_ecu*)* @j1939_ecu_map_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_ecu_map_locked(%struct.j1939_ecu* %0) #0 {
  %2 = alloca %struct.j1939_ecu*, align 8
  %3 = alloca %struct.j1939_priv*, align 8
  %4 = alloca %struct.j1939_addr_ent*, align 8
  store %struct.j1939_ecu* %0, %struct.j1939_ecu** %2, align 8
  %5 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %6 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %5, i32 0, i32 3
  %7 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  store %struct.j1939_priv* %7, %struct.j1939_priv** %3, align 8
  %8 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %9 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %8, i32 0, i32 2
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %12 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @j1939_address_is_unicast(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %19 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %18, i32 0, i32 1
  %20 = load %struct.j1939_addr_ent*, %struct.j1939_addr_ent** %19, align 8
  %21 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %22 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.j1939_addr_ent, %struct.j1939_addr_ent* %20, i64 %23
  store %struct.j1939_addr_ent* %24, %struct.j1939_addr_ent** %4, align 8
  %25 = load %struct.j1939_addr_ent*, %struct.j1939_addr_ent** %4, align 8
  %26 = getelementptr inbounds %struct.j1939_addr_ent, %struct.j1939_addr_ent* %25, i32 0, i32 1
  %27 = load %struct.j1939_ecu*, %struct.j1939_ecu** %26, align 8
  %28 = icmp ne %struct.j1939_ecu* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %17
  %30 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %31 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %34 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %37 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netdev_warn(i32 %32, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %38)
  br label %55

40:                                               ; preds = %17
  %41 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %42 = call i32 @j1939_ecu_get(%struct.j1939_ecu* %41)
  %43 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %44 = load %struct.j1939_addr_ent*, %struct.j1939_addr_ent** %4, align 8
  %45 = getelementptr inbounds %struct.j1939_addr_ent, %struct.j1939_addr_ent* %44, i32 0, i32 1
  store %struct.j1939_ecu* %43, %struct.j1939_ecu** %45, align 8
  %46 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %47 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.j1939_addr_ent*, %struct.j1939_addr_ent** %4, align 8
  %50 = getelementptr inbounds %struct.j1939_addr_ent, %struct.j1939_addr_ent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  br label %55

55:                                               ; preds = %40, %29, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @j1939_address_is_unicast(i64) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64, i32) #1

declare dso_local i32 @j1939_ecu_get(%struct.j1939_ecu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
