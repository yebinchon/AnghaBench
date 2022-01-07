; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_ethtool.c___ethtool_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_ethtool.c___ethtool_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.phy_device*, %struct.ethtool_ops* }
%struct.phy_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.phy_device*, %struct.ethtool_modinfo*)* }
%struct.ethtool_ops = type { i32 (%struct.net_device*, %struct.ethtool_modinfo.0*)* }
%struct.ethtool_modinfo.0 = type opaque
%struct.ethtool_modinfo = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @__ethtool_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ethtool_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.ethtool_ops*, align 8
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 2
  %10 = load %struct.ethtool_ops*, %struct.ethtool_ops** %9, align 8
  store %struct.ethtool_ops* %10, %struct.ethtool_ops** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %23 = call i32 @sfp_get_module_info(i64 %21, %struct.ethtool_modinfo* %22)
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %26 = icmp ne %struct.phy_device* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.phy_device*, %struct.ethtool_modinfo*)*, i32 (%struct.phy_device*, %struct.ethtool_modinfo*)** %36, align 8
  %38 = icmp ne i32 (%struct.phy_device*, %struct.ethtool_modinfo*)* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.phy_device*, %struct.ethtool_modinfo*)*, i32 (%struct.phy_device*, %struct.ethtool_modinfo*)** %43, align 8
  %45 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %46 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %47 = call i32 %44(%struct.phy_device* %45, %struct.ethtool_modinfo* %46)
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %32, %27, %24
  %49 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.net_device*, %struct.ethtool_modinfo.0*)*, i32 (%struct.net_device*, %struct.ethtool_modinfo.0*)** %50, align 8
  %52 = icmp ne i32 (%struct.net_device*, %struct.ethtool_modinfo.0*)* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %54, i32 0, i32 0
  %56 = load i32 (%struct.net_device*, %struct.ethtool_modinfo.0*)*, i32 (%struct.net_device*, %struct.ethtool_modinfo.0*)** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %59 = bitcast %struct.ethtool_modinfo* %58 to %struct.ethtool_modinfo.0*
  %60 = call i32 %56(%struct.net_device* %57, %struct.ethtool_modinfo.0* %59)
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %53, %39, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @sfp_get_module_info(i64, %struct.ethtool_modinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
