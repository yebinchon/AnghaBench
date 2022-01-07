; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_can_apply_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_can_apply_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { %struct.net_device*, %struct.dsa_switch* }
%struct.net_device = type { i32 }
%struct.dsa_switch = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@.str = private unnamed_addr constant [36 x i8] c"VLAN filtering is a global setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*, i32)* @dsa_port_can_apply_vlan_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_can_apply_vlan_filtering(%struct.dsa_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %9, i32 0, i32 1
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %10, align 8
  store %struct.dsa_switch* %11, %struct.dsa_switch** %6, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %8, align 8
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %51

33:                                               ; preds = %24
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %36 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  %38 = icmp eq %struct.net_device* %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = call i32 @br_vlan_enabled(%struct.net_device* %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %47 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %39, %32
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %18

54:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %45, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @br_vlan_enabled(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
