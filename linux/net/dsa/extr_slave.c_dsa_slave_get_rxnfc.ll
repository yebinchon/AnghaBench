; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, %struct.ethtool_rxnfc*, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @dsa_slave_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dsa_port*, align 8
  %9 = alloca %struct.dsa_switch*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %10)
  store %struct.dsa_port* %11, %struct.dsa_port** %8, align 8
  %12 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %13 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %12, i32 0, i32 1
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %13, align 8
  store %struct.dsa_switch* %14, %struct.dsa_switch** %9, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_rxnfc*, i32*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_rxnfc*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.ethtool_rxnfc*, i32*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_rxnfc*, i32*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_rxnfc*, i32*)** %28, align 8
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %31 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %32 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 %29(%struct.dsa_switch* %30, i32 %33, %struct.ethtool_rxnfc* %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
