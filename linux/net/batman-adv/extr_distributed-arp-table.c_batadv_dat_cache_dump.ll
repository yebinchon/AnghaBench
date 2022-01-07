; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_cache_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_cache_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.batadv_hard_iface = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_hashtable = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.batadv_hashtable* }

@BATADV_ATTR_MESH_IFINDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_dat_cache_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.batadv_hashtable*, align 8
  %12 = alloca %struct.batadv_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %6, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @NETLINK_CB(%struct.TYPE_6__* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.net* @sock_net(i32 %28)
  store %struct.net* %29, %struct.net** %9, align 8
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %31 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %41 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BATADV_ATTR_MESH_IFINDEX, align 4
  %44 = call i32 @batadv_netlink_get_ifindex(i32 %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %130

50:                                               ; preds = %2
  %51 = load %struct.net*, %struct.net** %9, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call %struct.net_device* @dev_get_by_index(%struct.net* %51, i32 %52)
  store %struct.net_device* %53, %struct.net_device** %10, align 8
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = icmp ne %struct.net_device* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.net_device*, %struct.net_device** %10, align 8
  %58 = call i32 @batadv_softif_is_valid(%struct.net_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  br label %116

63:                                               ; preds = %56
  %64 = load %struct.net_device*, %struct.net_device** %10, align 8
  %65 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %64)
  store %struct.batadv_priv* %65, %struct.batadv_priv** %12, align 8
  %66 = load %struct.batadv_priv*, %struct.batadv_priv** %12, align 8
  %67 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %68, align 8
  store %struct.batadv_hashtable* %69, %struct.batadv_hashtable** %11, align 8
  %70 = load %struct.batadv_priv*, %struct.batadv_priv** %12, align 8
  %71 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %70)
  store %struct.batadv_hard_iface* %71, %struct.batadv_hard_iface** %6, align 8
  %72 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %73 = icmp ne %struct.batadv_hard_iface* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %76 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %63
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %16, align 4
  br label %116

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %11, align 8
  %87 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %94 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %11, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @batadv_dat_cache_dump_bucket(%struct.sk_buff* %91, i32 %92, %struct.netlink_callback* %93, %struct.batadv_hashtable* %94, i32 %95, i32* %14)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %84

102:                                              ; preds = %98, %84
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %105 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %110 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %108, i32* %112, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %102, %80, %60
  %117 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %118 = icmp ne %struct.batadv_hard_iface* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %121 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.net_device*, %struct.net_device** %10, align 8
  %124 = icmp ne %struct.net_device* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.net_device*, %struct.net_device** %10, align 8
  %127 = call i32 @dev_put(%struct.net_device* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %47
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @NETLINK_CB(%struct.TYPE_6__*) #1

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @batadv_netlink_get_ifindex(i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i64 @batadv_dat_cache_dump_bucket(%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_hashtable*, i32, i32*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
