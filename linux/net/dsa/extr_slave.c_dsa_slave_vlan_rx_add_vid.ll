; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dsa_port = type { %struct.dsa_port*, i64 }
%struct.bridge_vlan_info = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @dsa_slave_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsa_port*, align 8
  %9 = alloca %struct.bridge_vlan_info, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %11)
  store %struct.dsa_port* %12, %struct.dsa_port** %8, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %19 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @br_vlan_enabled(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %26 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @br_vlan_get_info(i64 %27, i32 %28, %struct.bridge_vlan_info* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dsa_port_vid_add(%struct.dsa_port* %37, i32 %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %36
  %45 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %46 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %45, i32 0, i32 0
  %47 = load %struct.dsa_port*, %struct.dsa_port** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dsa_port_vid_add(%struct.dsa_port* %47, i32 %48, i32 0)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %42, %32, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @br_vlan_enabled(i64) #1

declare dso_local i32 @br_vlan_get_info(i64, i32, %struct.bridge_vlan_info*) #1

declare dso_local i32 @dsa_port_vid_add(%struct.dsa_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
