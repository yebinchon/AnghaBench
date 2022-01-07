; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_port_obj_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_port_obj_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32, %struct.net_device* }
%struct.dsa_port = type { %struct.dsa_port* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*)* @dsa_slave_port_obj_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_port_obj_del(%struct.net_device* %0, %struct.switchdev_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_obj*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %8)
  store %struct.dsa_port* %9, %struct.dsa_port** %6, align 8
  %10 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %11 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %38 [
    i32 129, label %13
    i32 130, label %27
    i32 128, label %34
  ]

13:                                               ; preds = %2
  %14 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %15 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = icmp ne %struct.net_device* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %13
  %23 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %24 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %25 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %24)
  %26 = call i32 @dsa_port_mdb_del(%struct.dsa_port* %23, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %29 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %28, i32 0, i32 0
  %30 = load %struct.dsa_port*, %struct.dsa_port** %29, align 8
  %31 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %32 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %31)
  %33 = call i32 @dsa_port_mdb_del(%struct.dsa_port* %30, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %37 = call i32 @dsa_slave_vlan_del(%struct.net_device* %35, %struct.switchdev_obj* %36)
  store i32 %37, i32* %7, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %34, %27, %22
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @dsa_port_mdb_del(%struct.dsa_port*, i32) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj*) #1

declare dso_local i32 @dsa_slave_vlan_del(%struct.net_device*, %struct.switchdev_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
