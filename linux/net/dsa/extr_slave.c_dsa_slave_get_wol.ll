; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.dsa_port = type { i32, i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @dsa_slave_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_slave_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %7)
  store %struct.dsa_port* %8, %struct.dsa_port** %5, align 8
  %9 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %10 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %9, i32 0, i32 2
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %10, align 8
  store %struct.dsa_switch* %11, %struct.dsa_switch** %6, align 8
  %12 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %16 = call i32 @phylink_ethtool_get_wol(i32 %14, %struct.ethtool_wolinfo* %15)
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %18 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)** %20, align 8
  %22 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %25 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)** %27, align 8
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %30 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %31 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %34 = call i32 %28(%struct.dsa_switch* %29, i32 %32, %struct.ethtool_wolinfo* %33)
  br label %35

35:                                               ; preds = %23, %2
  ret void
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @phylink_ethtool_get_wol(i32, %struct.ethtool_wolinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
