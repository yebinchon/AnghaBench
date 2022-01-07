; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { %struct.net_device* }
%struct.switchdev_trans = type { i32 }
%struct.dsa_port = type { %struct.dsa_port*, i64 }
%struct.switchdev_obj_port_vlan = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*, %struct.switchdev_trans*)* @dsa_slave_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_vlan_add(%struct.net_device* %0, %struct.switchdev_obj* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_obj*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.dsa_port*, align 8
  %9 = alloca %struct.switchdev_obj_port_vlan, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %6, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %11)
  store %struct.dsa_port* %12, %struct.dsa_port** %8, align 8
  %13 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %14 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = icmp ne %struct.net_device* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %23 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %28 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @br_vlan_enabled(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %61

33:                                               ; preds = %26, %21
  %34 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %35 = call %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj* %34)
  %36 = bitcast %struct.switchdev_obj_port_vlan* %9 to i8*
  %37 = bitcast %struct.switchdev_obj_port_vlan* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %39 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %40 = call i32 @dsa_port_vlan_add(%struct.dsa_port* %38, %struct.switchdev_obj_port_vlan* %9, %struct.switchdev_trans* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %61

45:                                               ; preds = %33
  %46 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %47 = xor i32 %46, -1
  %48 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %47
  store i32 %50, i32* %48, align 4
  %51 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %52 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %51, i32 0, i32 0
  %53 = load %struct.dsa_port*, %struct.dsa_port** %52, align 8
  %54 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %55 = call i32 @dsa_port_vlan_add(%struct.dsa_port* %53, %struct.switchdev_obj_port_vlan* %9, %struct.switchdev_trans* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %58, %43, %32, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @br_vlan_enabled(i64) #1

declare dso_local %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dsa_port_vlan_add(%struct.dsa_port*, %struct.switchdev_obj_port_vlan*, %struct.switchdev_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
