; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @dsa_slave_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_slave_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsa_port*, align 8
  %8 = alloca %struct.dsa_switch*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %9)
  store %struct.dsa_port* %10, %struct.dsa_port** %7, align 8
  %11 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %12 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %11, i32 0, i32 1
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  store %struct.dsa_switch* %13, %struct.dsa_switch** %8, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %22 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_regs*, i8*)** %24, align 8
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %27 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %28 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 %25(%struct.dsa_switch* %26, i32 %29, %struct.ethtool_regs* %30, i8* %31)
  br label %33

33:                                               ; preds = %20, %3
  ret void
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
