; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_get_phy_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_get_phy_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32 }
%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_get_phy_sset_count(%struct.dsa_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  %6 = load i32, i32* @EOPNOTSUPP, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @of_phy_is_fixed_link(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %17 = call %struct.phy_device* @dsa_port_get_phy_device(%struct.dsa_port* %16)
  store %struct.phy_device* %17, %struct.phy_device** %4, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = call i64 @IS_ERR_OR_NULL(%struct.phy_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %15
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = call i32 @phy_ethtool_get_sset_count(%struct.phy_device* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @put_device(i32* %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %21, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local %struct.phy_device* @dsa_port_get_phy_device(%struct.dsa_port*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.phy_device*) #1

declare dso_local i32 @phy_ethtool_get_sset_count(%struct.phy_device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
