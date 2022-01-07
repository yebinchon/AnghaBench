; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_add_cls_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_add_cls_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_cls_matchall_offload = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.flow_action_entry* }
%struct.flow_action_entry = type { i64, %struct.net_device* }
%struct.TYPE_5__ = type { i64 }
%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.dsa_switch*, i32, %struct.dsa_mall_mirror_tc_entry*, i32)* }
%struct.dsa_mall_mirror_tc_entry = type { i32, i32 }
%struct.dsa_slave_priv = type { i32 }
%struct.dsa_mall_tc_entry = type { i32, %struct.dsa_mall_mirror_tc_entry, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@FLOW_ACTION_MIRRED = common dso_local global i64 0, align 8
@ETH_P_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DSA_PORT_MALL_MIRROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.tc_cls_matchall_offload*, i32)* @dsa_slave_add_cls_matchall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_add_cls_matchall(%struct.net_device* %0, %struct.tc_cls_matchall_offload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.tc_cls_matchall_offload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsa_port*, align 8
  %9 = alloca %struct.dsa_slave_priv*, align 8
  %10 = alloca %struct.dsa_mall_tc_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dsa_switch*, align 8
  %13 = alloca %struct.flow_action_entry*, align 8
  %14 = alloca %struct.dsa_port*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dsa_mall_mirror_tc_entry*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %17)
  store %struct.dsa_port* %18, %struct.dsa_port** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.dsa_slave_priv* %20, %struct.dsa_slave_priv** %9, align 8
  %21 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %22 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %26 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %25, i32 0, i32 1
  %27 = load %struct.dsa_switch*, %struct.dsa_switch** %26, align 8
  store %struct.dsa_switch* %27, %struct.dsa_switch** %12, align 8
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  %31 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dsa_switch*, i32, %struct.dsa_mall_mirror_tc_entry*, i32)*, i32 (%struct.dsa_switch*, i32, %struct.dsa_mall_mirror_tc_entry*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.dsa_mall_mirror_tc_entry*, i32)* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %4, align 4
  br label %138

38:                                               ; preds = %3
  %39 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %40 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call i32 @flow_offload_has_one_action(%struct.TYPE_8__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %4, align 4
  br label %138

47:                                               ; preds = %38
  %48 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %49 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.flow_action_entry*, %struct.flow_action_entry** %52, align 8
  %54 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %53, i64 0
  store %struct.flow_action_entry* %54, %struct.flow_action_entry** %13, align 8
  %55 = load %struct.flow_action_entry*, %struct.flow_action_entry** %13, align 8
  %56 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FLOW_ACTION_MIRRED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %137

60:                                               ; preds = %47
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* @ETH_P_ALL, align 4
  %63 = call i64 @htons(i32 %62)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %137

65:                                               ; preds = %60
  %66 = load %struct.flow_action_entry*, %struct.flow_action_entry** %13, align 8
  %67 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %66, i32 0, i32 1
  %68 = load %struct.net_device*, %struct.net_device** %67, align 8
  %69 = icmp ne %struct.net_device* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %138

73:                                               ; preds = %65
  %74 = load %struct.flow_action_entry*, %struct.flow_action_entry** %13, align 8
  %75 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %74, i32 0, i32 1
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = call i32 @dsa_slave_dev_check(%struct.net_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %138

82:                                               ; preds = %73
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.dsa_mall_tc_entry* @kzalloc(i32 20, i32 %83)
  store %struct.dsa_mall_tc_entry* %84, %struct.dsa_mall_tc_entry** %10, align 8
  %85 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %10, align 8
  %86 = icmp ne %struct.dsa_mall_tc_entry* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %138

90:                                               ; preds = %82
  %91 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %92 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %10, align 8
  %95 = getelementptr inbounds %struct.dsa_mall_tc_entry, %struct.dsa_mall_tc_entry* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DSA_PORT_MALL_MIRROR, align 4
  %97 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %10, align 8
  %98 = getelementptr inbounds %struct.dsa_mall_tc_entry, %struct.dsa_mall_tc_entry* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %10, align 8
  %100 = getelementptr inbounds %struct.dsa_mall_tc_entry, %struct.dsa_mall_tc_entry* %99, i32 0, i32 1
  store %struct.dsa_mall_mirror_tc_entry* %100, %struct.dsa_mall_mirror_tc_entry** %16, align 8
  %101 = load %struct.flow_action_entry*, %struct.flow_action_entry** %13, align 8
  %102 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %101, i32 0, i32 1
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  %104 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %103)
  store %struct.dsa_port* %104, %struct.dsa_port** %14, align 8
  %105 = load %struct.dsa_port*, %struct.dsa_port** %14, align 8
  %106 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dsa_mall_mirror_tc_entry*, %struct.dsa_mall_mirror_tc_entry** %16, align 8
  %109 = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, %struct.dsa_mall_mirror_tc_entry* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.dsa_mall_mirror_tc_entry*, %struct.dsa_mall_mirror_tc_entry** %16, align 8
  %112 = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, %struct.dsa_mall_mirror_tc_entry* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  %114 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32 (%struct.dsa_switch*, i32, %struct.dsa_mall_mirror_tc_entry*, i32)*, i32 (%struct.dsa_switch*, i32, %struct.dsa_mall_mirror_tc_entry*, i32)** %116, align 8
  %118 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  %119 = load %struct.dsa_port*, %struct.dsa_port** %8, align 8
  %120 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.dsa_mall_mirror_tc_entry*, %struct.dsa_mall_mirror_tc_entry** %16, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 %117(%struct.dsa_switch* %118, i32 %121, %struct.dsa_mall_mirror_tc_entry* %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %90
  %128 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %10, align 8
  %129 = call i32 @kfree(%struct.dsa_mall_tc_entry* %128)
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %4, align 4
  br label %138

131:                                              ; preds = %90
  %132 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %10, align 8
  %133 = getelementptr inbounds %struct.dsa_mall_tc_entry, %struct.dsa_mall_tc_entry* %132, i32 0, i32 0
  %134 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %9, align 8
  %135 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %134, i32 0, i32 0
  %136 = call i32 @list_add_tail(i32* %133, i32* %135)
  br label %137

137:                                              ; preds = %131, %60, %47
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %127, %87, %79, %70, %45, %36
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @flow_offload_has_one_action(%struct.TYPE_8__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dsa_slave_dev_check(%struct.net_device*) #1

declare dso_local %struct.dsa_mall_tc_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.dsa_mall_tc_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
