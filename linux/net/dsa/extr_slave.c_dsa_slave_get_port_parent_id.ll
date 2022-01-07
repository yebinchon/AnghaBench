; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_port_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_port_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.dsa_port = type { %struct.dsa_switch* }
%struct.dsa_switch = type { i64, %struct.dsa_switch_tree* }
%struct.dsa_switch_tree = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_phys_item_id*)* @dsa_slave_get_port_parent_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_get_port_parent_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca %struct.dsa_switch_tree*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %9)
  store %struct.dsa_port* %10, %struct.dsa_port** %6, align 8
  %11 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %12 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %11, i32 0, i32 0
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  store %struct.dsa_switch* %13, %struct.dsa_switch** %7, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 1
  %16 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %15, align 8
  store %struct.dsa_switch_tree* %16, %struct.dsa_switch_tree** %8, align 8
  %17 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %18 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %17, i32 0, i32 0
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %18, align 8
  %20 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %28 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %27, i32 0, i32 0
  store i32 4, i32* %28, align 4
  %29 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %30 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %29, i32 0, i32 1
  %31 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %8, align 8
  %32 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %31, i32 0, i32 0
  %33 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %34 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32* %30, i32* %32, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %23
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
