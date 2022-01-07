; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.batadv_hashtable* }
%struct.batadv_hashtable = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.batadv_hard_iface = type { i64 }
%struct.TYPE_7__ = type { i32 }

@BATADV_ATTR_MESH_IFINDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_tt_global_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_hashtable*, align 8
  %11 = alloca %struct.hlist_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net* @sock_net(i32 %23)
  store %struct.net* %24, %struct.net** %6, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %9, align 8
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %31 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %41 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @NETLINK_CB(%struct.TYPE_8__* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %17, align 4
  %47 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %48 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* @BATADV_ATTR_MESH_IFINDEX, align 4
  %51 = call i32 @batadv_netlink_get_ifindex(%struct.TYPE_6__* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %152

57:                                               ; preds = %2
  %58 = load %struct.net*, %struct.net** %6, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call %struct.net_device* @dev_get_by_index(%struct.net* %58, i32 %59)
  store %struct.net_device* %60, %struct.net_device** %7, align 8
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = icmp ne %struct.net_device* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = call i32 @batadv_softif_is_valid(%struct.net_device* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %123

70:                                               ; preds = %63
  %71 = load %struct.net_device*, %struct.net_device** %7, align 8
  %72 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %71)
  store %struct.batadv_priv* %72, %struct.batadv_priv** %8, align 8
  %73 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %74 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %73)
  store %struct.batadv_hard_iface* %74, %struct.batadv_hard_iface** %9, align 8
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %76 = icmp ne %struct.batadv_hard_iface* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %79 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %70
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %123

86:                                               ; preds = %77
  %87 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %88 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %89, align 8
  store %struct.batadv_hashtable* %90, %struct.batadv_hashtable** %10, align 8
  br label %91

91:                                               ; preds = %116, %86
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %10, align 8
  %94 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %91
  %98 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %10, align 8
  %99 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %98, i32 0, i32 1
  %100 = load %struct.hlist_head*, %struct.hlist_head** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %100, i64 %102
  store %struct.hlist_head* %103, %struct.hlist_head** %11, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %107 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %112 = load %struct.hlist_head*, %struct.hlist_head** %11, align 8
  %113 = call i64 @batadv_tt_global_dump_bucket(%struct.sk_buff* %104, i32 %105, i32 %110, %struct.batadv_priv* %111, %struct.hlist_head* %112, i32* %15, i32* %16)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  br label %119

116:                                              ; preds = %97
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %91

119:                                              ; preds = %115, %91
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %83, %67
  %124 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %125 = icmp ne %struct.batadv_hard_iface* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %128 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.net_device*, %struct.net_device** %7, align 8
  %131 = icmp ne %struct.net_device* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.net_device*, %struct.net_device** %7, align 8
  %134 = call i32 @dev_put(%struct.net_device* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %138 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %143 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %148 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %135, %54
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NETLINK_CB(%struct.TYPE_8__*) #1

declare dso_local i32 @batadv_netlink_get_ifindex(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i64 @batadv_tt_global_dump_bucket(%struct.sk_buff*, i32, i32, %struct.batadv_priv*, %struct.hlist_head*, i32*, i32*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
