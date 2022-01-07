; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_ethtool_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_ethtool_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ethtool_ops*, %struct.dsa_port* }
%struct.ethtool_ops = type { i32, i32, i32, i32, i32, i32 }
%struct.dsa_port = type { %struct.ethtool_ops*, %struct.dsa_switch* }
%struct.dsa_switch = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsa_master_get_regs_len = common dso_local global i32 0, align 4
@dsa_master_get_regs = common dso_local global i32 0, align 4
@dsa_master_get_sset_count = common dso_local global i32 0, align 4
@dsa_master_get_ethtool_stats = common dso_local global i32 0, align 4
@dsa_master_get_strings = common dso_local global i32 0, align 4
@dsa_master_get_ethtool_phy_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dsa_master_ethtool_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_master_ethtool_setup(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca %struct.ethtool_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  store %struct.dsa_port* %9, %struct.dsa_port** %4, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %5, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ethtool_ops* @devm_kzalloc(i32 %15, i32 24, i32 %16)
  store %struct.ethtool_ops* %17, %struct.ethtool_ops** %6, align 8
  %18 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %19 = icmp ne %struct.ethtool_ops* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load %struct.ethtool_ops*, %struct.ethtool_ops** %25, align 8
  %27 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %28 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %27, i32 0, i32 0
  store %struct.ethtool_ops* %26, %struct.ethtool_ops** %28, align 8
  %29 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %30 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %29, i32 0, i32 0
  %31 = load %struct.ethtool_ops*, %struct.ethtool_ops** %30, align 8
  %32 = icmp ne %struct.ethtool_ops* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %35 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %36 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %35, i32 0, i32 0
  %37 = load %struct.ethtool_ops*, %struct.ethtool_ops** %36, align 8
  %38 = call i32 @memcpy(%struct.ethtool_ops* %34, %struct.ethtool_ops* %37, i32 24)
  br label %39

39:                                               ; preds = %33, %23
  %40 = load i32, i32* @dsa_master_get_regs_len, align 4
  %41 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @dsa_master_get_regs, align 4
  %44 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @dsa_master_get_sset_count, align 4
  %47 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %48 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @dsa_master_get_ethtool_stats, align 4
  %50 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %51 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @dsa_master_get_strings, align 4
  %53 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %54 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @dsa_master_get_ethtool_phy_stats, align 4
  %56 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %57 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ethtool_ops*, %struct.ethtool_ops** %6, align 8
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  store %struct.ethtool_ops* %58, %struct.ethtool_ops** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %39, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.ethtool_ops* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ethtool_ops*, %struct.ethtool_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
