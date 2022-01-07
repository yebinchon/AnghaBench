; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_pre_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_pre_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_softif_vlan = type { i32 }

@BATADV_FLAG_NEED_HARDIF = common dso_local global i32 0, align 4
@BATADV_FLAG_NEED_VLAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BATADV_FLAG_NEED_MESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @batadv_pre_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_pre_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_ops*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_priv*, align 8
  %11 = alloca %struct.batadv_softif_vlan*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.genl_ops* %0, %struct.genl_ops** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %17 = call %struct.net* @genl_info_net(%struct.genl_info* %16)
  store %struct.net* %17, %struct.net** %8, align 8
  store %struct.batadv_priv* null, %struct.batadv_priv** %10, align 8
  %18 = load i32, i32* @BATADV_FLAG_NEED_HARDIF, align 4
  %19 = load i32, i32* @BATADV_FLAG_NEED_VLAN, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %22 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %13, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @hweight8(i32 %25)
  %27 = icmp sgt i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %156

34:                                               ; preds = %3
  %35 = load i32, i32* @BATADV_FLAG_NEED_HARDIF, align 4
  %36 = load i32, i32* @BATADV_FLAG_NEED_VLAN, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %39 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %46 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @BATADV_FLAG_NEED_MESH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %44, %34
  %53 = phi i1 [ false, %34 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %156

60:                                               ; preds = %52
  %61 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %62 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BATADV_FLAG_NEED_MESH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %70 = call %struct.net_device* @batadv_get_softif_from_info(%struct.net* %68, %struct.genl_info* %69)
  store %struct.net_device* %70, %struct.net_device** %12, align 8
  %71 = load %struct.net_device*, %struct.net_device** %12, align 8
  %72 = call i64 @IS_ERR(%struct.net_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.net_device*, %struct.net_device** %12, align 8
  %76 = call i32 @PTR_ERR(%struct.net_device* %75)
  store i32 %76, i32* %4, align 4
  br label %156

77:                                               ; preds = %67
  %78 = load %struct.net_device*, %struct.net_device** %12, align 8
  %79 = call %struct.net_device* @netdev_priv(%struct.net_device* %78)
  %80 = bitcast %struct.net_device* %79 to %struct.batadv_priv*
  store %struct.batadv_priv* %80, %struct.batadv_priv** %10, align 8
  %81 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %82 = bitcast %struct.batadv_priv* %81 to %struct.net_device*
  %83 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %84 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %83, i32 0, i32 0
  %85 = load %struct.net_device**, %struct.net_device*** %84, align 8
  %86 = getelementptr inbounds %struct.net_device*, %struct.net_device** %85, i64 0
  store %struct.net_device* %82, %struct.net_device** %86, align 8
  br label %87

87:                                               ; preds = %77, %60
  %88 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %89 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BATADV_FLAG_NEED_HARDIF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %87
  %95 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %96 = bitcast %struct.batadv_priv* %95 to %struct.net_device*
  %97 = load %struct.net*, %struct.net** %8, align 8
  %98 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %99 = call %struct.net_device* @batadv_get_hardif_from_info(%struct.net_device* %96, %struct.net* %97, %struct.genl_info* %98)
  %100 = bitcast %struct.net_device* %99 to %struct.batadv_hard_iface*
  store %struct.batadv_hard_iface* %100, %struct.batadv_hard_iface** %9, align 8
  %101 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %102 = bitcast %struct.batadv_hard_iface* %101 to %struct.net_device*
  %103 = call i64 @IS_ERR(%struct.net_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %107 = bitcast %struct.batadv_hard_iface* %106 to %struct.net_device*
  %108 = call i32 @PTR_ERR(%struct.net_device* %107)
  store i32 %108, i32* %15, align 4
  br label %146

109:                                              ; preds = %94
  %110 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %111 = bitcast %struct.batadv_hard_iface* %110 to %struct.net_device*
  %112 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 0
  %114 = load %struct.net_device**, %struct.net_device*** %113, align 8
  %115 = getelementptr inbounds %struct.net_device*, %struct.net_device** %114, i64 1
  store %struct.net_device* %111, %struct.net_device** %115, align 8
  br label %116

116:                                              ; preds = %109, %87
  %117 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %118 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @BATADV_FLAG_NEED_VLAN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %116
  %124 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %125 = bitcast %struct.batadv_priv* %124 to %struct.net_device*
  %126 = load %struct.net*, %struct.net** %8, align 8
  %127 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %128 = call %struct.net_device* @batadv_get_vlan_from_info(%struct.net_device* %125, %struct.net* %126, %struct.genl_info* %127)
  %129 = bitcast %struct.net_device* %128 to %struct.batadv_softif_vlan*
  store %struct.batadv_softif_vlan* %129, %struct.batadv_softif_vlan** %11, align 8
  %130 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %11, align 8
  %131 = bitcast %struct.batadv_softif_vlan* %130 to %struct.net_device*
  %132 = call i64 @IS_ERR(%struct.net_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %11, align 8
  %136 = bitcast %struct.batadv_softif_vlan* %135 to %struct.net_device*
  %137 = call i32 @PTR_ERR(%struct.net_device* %136)
  store i32 %137, i32* %15, align 4
  br label %146

138:                                              ; preds = %123
  %139 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %11, align 8
  %140 = bitcast %struct.batadv_softif_vlan* %139 to %struct.net_device*
  %141 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %142 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %141, i32 0, i32 0
  %143 = load %struct.net_device**, %struct.net_device*** %142, align 8
  %144 = getelementptr inbounds %struct.net_device*, %struct.net_device** %143, i64 1
  store %struct.net_device* %140, %struct.net_device** %144, align 8
  br label %145

145:                                              ; preds = %138, %116
  store i32 0, i32* %4, align 4
  br label %156

146:                                              ; preds = %134, %105
  %147 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %148 = icmp ne %struct.batadv_priv* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %151 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_put(i32 %152)
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %15, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %145, %74, %57, %31
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local %struct.net_device* @batadv_get_softif_from_info(%struct.net*, %struct.genl_info*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @batadv_get_hardif_from_info(%struct.net_device*, %struct.net*, %struct.genl_info*) #1

declare dso_local %struct.net_device* @batadv_get_vlan_from_info(%struct.net_device*, %struct.net*, %struct.genl_info*) #1

declare dso_local i32 @dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
