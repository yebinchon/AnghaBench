; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_8021q_restore_pvid.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_8021q_restore_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bridge_vlan_info = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Couldn't determine PVID attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32)* @dsa_8021q_restore_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_8021q_restore_pvid(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bridge_vlan_info, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dsa_is_user_port(%struct.dsa_switch* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %17 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call i32 @br_vlan_get_pvid(%struct.net_device* %24, i32* %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %52

29:                                               ; preds = %15
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @br_vlan_get_info(%struct.net_device* %30, i32 %31, %struct.bridge_vlan_info* %6)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %37 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %29
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %43 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dsa_port_vid_add(%struct.TYPE_2__* %47, i32 %48, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %35, %28, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @br_vlan_get_pvid(%struct.net_device*, i32*) #1

declare dso_local i32 @br_vlan_get_info(%struct.net_device*, i32, %struct.bridge_vlan_info*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dsa_port_vid_add(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
