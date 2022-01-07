; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.batadv_hashtable* }
%struct.batadv_hashtable = type { i32 }
%struct.batadv_hard_iface = type { i64 }
%struct.TYPE_5__ = type { i32 }

@BATADV_ATTR_MESH_IFINDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_tt_local_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_hashtable*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %6, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %9, align 8
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %29 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %34 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @NETLINK_CB(%struct.TYPE_6__* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %41 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BATADV_ATTR_MESH_IFINDEX, align 4
  %44 = call i32 @batadv_netlink_get_ifindex(i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %131

50:                                               ; preds = %2
  %51 = load %struct.net*, %struct.net** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.net_device* @dev_get_by_index(%struct.net* %51, i32 %52)
  store %struct.net_device* %53, %struct.net_device** %7, align 8
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = icmp ne %struct.net_device* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = call i32 @batadv_softif_is_valid(%struct.net_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %107

63:                                               ; preds = %56
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %64)
  store %struct.batadv_priv* %65, %struct.batadv_priv** %8, align 8
  %66 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %67 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %66)
  store %struct.batadv_hard_iface* %67, %struct.batadv_hard_iface** %9, align 8
  %68 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %69 = icmp ne %struct.batadv_hard_iface* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %72 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %63
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %107

79:                                               ; preds = %70
  %80 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %81 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %82, align 8
  store %struct.batadv_hashtable* %83, %struct.batadv_hashtable** %10, align 8
  br label %84

84:                                               ; preds = %100, %79
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %10, align 8
  %87 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %94 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %95 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @batadv_tt_local_dump_bucket(%struct.sk_buff* %91, i32 %92, %struct.netlink_callback* %93, %struct.batadv_priv* %94, %struct.batadv_hashtable* %95, i32 %96, i32* %14)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %103

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %84

103:                                              ; preds = %99, %84
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %103, %76, %60
  %108 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %109 = icmp ne %struct.batadv_hard_iface* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %112 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.net_device*, %struct.net_device** %7, align 8
  %115 = icmp ne %struct.net_device* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.net_device*, %struct.net_device** %7, align 8
  %118 = call i32 @dev_put(%struct.net_device* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %122 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %127 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %119, %47
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NETLINK_CB(%struct.TYPE_6__*) #1

declare dso_local i32 @batadv_netlink_get_ifindex(i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i64 @batadv_tt_local_dump_bucket(%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hashtable*, i32, i32*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
