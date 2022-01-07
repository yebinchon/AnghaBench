; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_store_flag.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_store_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, i64, i64)* @store_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_flag(%struct.net_bridge_port* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %7, align 8
  br label %22

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %7, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %17, %13
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @br_port_flags_change(%struct.net_bridge_port* %32, i64 %33)
  br label %35

35:                                               ; preds = %28, %22
  ret i32 0
}

declare dso_local i32 @br_port_flags_change(%struct.net_bridge_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
