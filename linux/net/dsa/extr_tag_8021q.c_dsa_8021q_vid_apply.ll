; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_8021q_vid_apply.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_8021q_vid_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.dsa_port* }
%struct.dsa_port = type { %struct.dsa_port*, i32 }
%struct.bridge_vlan_info = type { i32 }

@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32, i32, i32)* @dsa_8021q_vid_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_8021q_vid_apply(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsa_port*, align 8
  %13 = alloca %struct.bridge_vlan_info, align 4
  %14 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 0
  %17 = load %struct.dsa_port*, %struct.dsa_port** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %17, i64 %19
  store %struct.dsa_port* %20, %struct.dsa_port** %12, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load %struct.dsa_port*, %struct.dsa_port** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dsa_port_vid_add(%struct.dsa_port* %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %74

28:                                               ; preds = %5
  %29 = load %struct.dsa_port*, %struct.dsa_port** %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dsa_port_vid_del(%struct.dsa_port* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %74

36:                                               ; preds = %28
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dsa_is_user_port(%struct.dsa_switch* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %74

42:                                               ; preds = %36
  %43 = load %struct.dsa_port*, %struct.dsa_port** %12, align 8
  %44 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @br_vlan_get_info(i32 %45, i32 %46, %struct.bridge_vlan_info* %13)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %74

51:                                               ; preds = %42
  %52 = load %struct.dsa_port*, %struct.dsa_port** %12, align 8
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dsa_port_vid_add(%struct.dsa_port* %52, i32 %53, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %74

61:                                               ; preds = %51
  %62 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %63 = xor i32 %62, -1
  %64 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load %struct.dsa_port*, %struct.dsa_port** %12, align 8
  %68 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %67, i32 0, i32 0
  %69 = load %struct.dsa_port*, %struct.dsa_port** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dsa_port_vid_add(%struct.dsa_port* %69, i32 %70, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %61, %59, %50, %41, %34, %23
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @dsa_port_vid_add(%struct.dsa_port*, i32, i32) #1

declare dso_local i32 @dsa_port_vid_del(%struct.dsa_port*, i32) #1

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @br_vlan_get_info(i32, i32, %struct.bridge_vlan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
