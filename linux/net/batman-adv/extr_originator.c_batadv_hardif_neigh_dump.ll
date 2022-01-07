; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_hardif_neigh_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_hardif_neigh_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hard_iface*)* }

@BATADV_IF_DEFAULT = common dso_local global %struct.batadv_hard_iface* null, align 8
@BATADV_ATTR_MESH_IFINDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFINDEX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_hardif_neigh_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_priv*, align 8
  %11 = alloca %struct.batadv_hard_iface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %16 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %6, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  store %struct.batadv_hard_iface* %21, %struct.batadv_hard_iface** %9, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %11, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BATADV_ATTR_MESH_IFINDEX, align 4
  %26 = call i32 @batadv_netlink_get_ifindex(i32 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %146

32:                                               ; preds = %2
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call %struct.net_device* @dev_get_by_index(%struct.net* %33, i32 %34)
  store %struct.net_device* %35, %struct.net_device** %7, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call i32 @batadv_softif_is_valid(%struct.net_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %120

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %46)
  store %struct.batadv_priv* %47, %struct.batadv_priv** %10, align 8
  %48 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %49 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %48)
  store %struct.batadv_hard_iface* %49, %struct.batadv_hard_iface** %11, align 8
  %50 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %11, align 8
  %51 = icmp ne %struct.batadv_hard_iface* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %11, align 8
  %54 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %45
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %120

61:                                               ; preds = %52
  %62 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %63 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BATADV_ATTR_HARD_IFINDEX, align 4
  %66 = call i32 @batadv_netlink_get_ifindex(i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %61
  %70 = load %struct.net*, %struct.net** %6, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call %struct.net_device* @dev_get_by_index(%struct.net* %70, i32 %71)
  store %struct.net_device* %72, %struct.net_device** %8, align 8
  %73 = load %struct.net_device*, %struct.net_device** %8, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = call %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device* %76)
  store %struct.batadv_hard_iface* %77, %struct.batadv_hard_iface** %9, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %80 = icmp ne %struct.batadv_hard_iface* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  br label %120

84:                                               ; preds = %78
  %85 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %86 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %85, i32 0, i32 1
  %87 = load %struct.net_device*, %struct.net_device** %86, align 8
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = icmp ne %struct.net_device* %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  br label %120

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %61
  %95 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %96 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hard_iface*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hard_iface*)** %99, align 8
  %101 = icmp ne i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hard_iface*)* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %120

105:                                              ; preds = %94
  %106 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %107 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hard_iface*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hard_iface*)** %110, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %114 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %115 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %116 = call i32 %111(%struct.sk_buff* %112, %struct.netlink_callback* %113, %struct.batadv_priv* %114, %struct.batadv_hard_iface* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %105, %102, %90, %81, %58, %42
  %121 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %122 = icmp ne %struct.batadv_hard_iface* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %125 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.net_device*, %struct.net_device** %8, align 8
  %128 = icmp ne %struct.net_device* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.net_device*, %struct.net_device** %8, align 8
  %131 = call i32 @dev_put(%struct.net_device* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %11, align 8
  %134 = icmp ne %struct.batadv_hard_iface* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %11, align 8
  %137 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.net_device*, %struct.net_device** %7, align 8
  %140 = icmp ne %struct.net_device* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = call i32 @dev_put(%struct.net_device* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %29
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @batadv_netlink_get_ifindex(i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
