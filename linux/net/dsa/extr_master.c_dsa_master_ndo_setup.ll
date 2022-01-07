; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_ndo_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_ndo_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops*, %struct.dsa_port* }
%struct.net_device_ops = type { i64 }
%struct.dsa_port = type { %struct.net_device_ops*, %struct.dsa_switch* }
%struct.dsa_switch = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsa_master_get_phys_port_name = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dsa_master_ndo_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_master_ndo_setup(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  store %struct.dsa_port* %9, %struct.dsa_port** %4, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %14, align 8
  %16 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %22 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.net_device_ops* @devm_kzalloc(i32 %23, i32 8, i32 %24)
  store %struct.net_device_ops* %25, %struct.net_device_ops** %6, align 8
  %26 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %27 = icmp ne %struct.net_device_ops* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %20
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load %struct.net_device_ops*, %struct.net_device_ops** %33, align 8
  %35 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %36 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %35, i32 0, i32 0
  store %struct.net_device_ops* %34, %struct.net_device_ops** %36, align 8
  %37 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %38 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %37, i32 0, i32 0
  %39 = load %struct.net_device_ops*, %struct.net_device_ops** %38, align 8
  %40 = icmp ne %struct.net_device_ops* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %43 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %44 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %43, i32 0, i32 0
  %45 = load %struct.net_device_ops*, %struct.net_device_ops** %44, align 8
  %46 = call i32 @memcpy(%struct.net_device_ops* %42, %struct.net_device_ops* %45, i32 8)
  br label %47

47:                                               ; preds = %41, %31
  %48 = load i64, i64* @dsa_master_get_phys_port_name, align 8
  %49 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %50 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  store %struct.net_device_ops* %51, %struct.net_device_ops** %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %28, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.net_device_ops* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.net_device_ops*, %struct.net_device_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
