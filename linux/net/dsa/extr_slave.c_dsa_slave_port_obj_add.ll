; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_port_obj_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_port_obj_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32, %struct.net_device* }
%struct.switchdev_trans = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.dsa_port = type { %struct.dsa_port* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*, %struct.switchdev_trans*, %struct.netlink_ext_ack*)* @dsa_slave_port_obj_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_port_obj_add(%struct.net_device* %0, %struct.switchdev_obj* %1, %struct.switchdev_trans* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.switchdev_obj*, align 8
  %8 = alloca %struct.switchdev_trans*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.dsa_port*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %7, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %12)
  store %struct.dsa_port* %13, %struct.dsa_port** %10, align 8
  %14 = load %struct.switchdev_obj*, %struct.switchdev_obj** %7, align 8
  %15 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %45 [
    i32 129, label %17
    i32 130, label %32
    i32 128, label %40
  ]

17:                                               ; preds = %4
  %18 = load %struct.switchdev_obj*, %struct.switchdev_obj** %7, align 8
  %19 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = icmp ne %struct.net_device* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %17
  %27 = load %struct.dsa_port*, %struct.dsa_port** %10, align 8
  %28 = load %struct.switchdev_obj*, %struct.switchdev_obj** %7, align 8
  %29 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %28)
  %30 = load %struct.switchdev_trans*, %struct.switchdev_trans** %8, align 8
  %31 = call i32 @dsa_port_mdb_add(%struct.dsa_port* %27, i32 %29, %struct.switchdev_trans* %30)
  store i32 %31, i32* %11, align 4
  br label %48

32:                                               ; preds = %4
  %33 = load %struct.dsa_port*, %struct.dsa_port** %10, align 8
  %34 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %33, i32 0, i32 0
  %35 = load %struct.dsa_port*, %struct.dsa_port** %34, align 8
  %36 = load %struct.switchdev_obj*, %struct.switchdev_obj** %7, align 8
  %37 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %36)
  %38 = load %struct.switchdev_trans*, %struct.switchdev_trans** %8, align 8
  %39 = call i32 @dsa_port_mdb_add(%struct.dsa_port* %35, i32 %37, %struct.switchdev_trans* %38)
  store i32 %39, i32* %11, align 4
  br label %48

40:                                               ; preds = %4
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = load %struct.switchdev_obj*, %struct.switchdev_obj** %7, align 8
  %43 = load %struct.switchdev_trans*, %struct.switchdev_trans** %8, align 8
  %44 = call i32 @dsa_slave_vlan_add(%struct.net_device* %41, %struct.switchdev_obj* %42, %struct.switchdev_trans* %43)
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %40, %32, %26
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @dsa_port_mdb_add(%struct.dsa_port*, i32, %struct.switchdev_trans*) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj*) #1

declare dso_local i32 @dsa_slave_vlan_add(%struct.net_device*, %struct.switchdev_obj*, %struct.switchdev_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
