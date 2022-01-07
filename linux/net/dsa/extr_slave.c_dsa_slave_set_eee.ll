; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32 }
%struct.dsa_port = type { i32, i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, %struct.ethtool_eee*)* }

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @dsa_slave_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %9)
  store %struct.dsa_port* %10, %struct.dsa_port** %6, align 8
  %11 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %12 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %11, i32 0, i32 2
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  store %struct.dsa_switch* %13, %struct.dsa_switch** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %20 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %28 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_eee*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_eee*)** %30, align 8
  %32 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.ethtool_eee*)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %26
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %38 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dsa_switch*, i32, %struct.ethtool_eee*)*, i32 (%struct.dsa_switch*, i32, %struct.ethtool_eee*)** %40, align 8
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %43 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %44 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %47 = call i32 %41(%struct.dsa_switch* %42, i32 %45, %struct.ethtool_eee* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %36
  %53 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %54 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %57 = call i32 @phylink_ethtool_set_eee(i32 %55, %struct.ethtool_eee* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %50, %33, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @phylink_ethtool_set_eee(i32, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
