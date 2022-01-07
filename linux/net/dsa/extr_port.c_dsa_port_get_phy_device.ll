; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_get_phy_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_get_phy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.dsa_port = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_device* (%struct.dsa_port*)* @dsa_port_get_phy_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_device* @dsa_port_get_phy_device(%struct.dsa_port* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  %6 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.device_node* @of_parse_phandle(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.phy_device* null, %struct.phy_device** %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call %struct.phy_device* @of_phy_find_device(%struct.device_node* %14)
  store %struct.phy_device* %15, %struct.phy_device** %5, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = icmp ne %struct.phy_device* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.phy_device* @ERR_PTR(i32 %22)
  store %struct.phy_device* %23, %struct.phy_device** %2, align 8
  br label %28

24:                                               ; preds = %13
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  %27 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  store %struct.phy_device* %27, %struct.phy_device** %2, align 8
  br label %28

28:                                               ; preds = %24, %18, %12
  %29 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  ret %struct.phy_device* %29
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.phy_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
