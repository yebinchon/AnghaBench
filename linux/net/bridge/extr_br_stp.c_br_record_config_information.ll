; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_record_config_information.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_record_config_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i64, i32, i32, i32, i32 }
%struct.br_config_bpdu = type { i64, i64, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*, %struct.br_config_bpdu*)* @br_record_config_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_record_config_information(%struct.net_bridge_port* %0, %struct.br_config_bpdu* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.br_config_bpdu*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store %struct.br_config_bpdu* %1, %struct.br_config_bpdu** %4, align 8
  %5 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %6 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %11 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %16 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %21 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %24 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %27 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %33 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %32, i32 0, i32 0
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %36 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %39 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = add nsw i64 %34, %41
  %43 = call i32 @mod_timer(i32* %33, i64 %42)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
