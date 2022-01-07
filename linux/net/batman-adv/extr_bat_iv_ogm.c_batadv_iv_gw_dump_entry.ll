; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_gw_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_gw_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_gw_node = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.batadv_neigh_node = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@BATADV_IF_DEFAULT = common dso_local global i32 0, align 4
@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_GATEWAYS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@BATADV_ATTR_FLAG_BEST = common dso_local global i32 0, align 4
@BATADV_ATTR_ORIG_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_TQ = common dso_local global i32 0, align 4
@BATADV_ATTR_ROUTER = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFNAME = common dso_local global i32 0, align 4
@BATADV_ATTR_BANDWIDTH_DOWN = common dso_local global i32 0, align 4
@BATADV_ATTR_BANDWIDTH_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_gw_node*)* @batadv_iv_gw_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_gw_dump_entry(%struct.sk_buff* %0, i32 %1, %struct.netlink_callback* %2, %struct.batadv_priv* %3, %struct.batadv_gw_node* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.batadv_priv*, align 8
  %10 = alloca %struct.batadv_gw_node*, align 8
  %11 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %12 = alloca %struct.batadv_neigh_node*, align 8
  %13 = alloca %struct.batadv_gw_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store %struct.batadv_priv* %3, %struct.batadv_priv** %9, align 8
  store %struct.batadv_gw_node* %4, %struct.batadv_gw_node** %10, align 8
  store %struct.batadv_neigh_ifinfo* null, %struct.batadv_neigh_ifinfo** %11, align 8
  store %struct.batadv_gw_node* null, %struct.batadv_gw_node** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %10, align 8
  %17 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %20 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.TYPE_10__* %18, i32 %19)
  store %struct.batadv_neigh_node* %20, %struct.batadv_neigh_node** %12, align 8
  %21 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %22 = icmp ne %struct.batadv_neigh_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %133

24:                                               ; preds = %5
  %25 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %26 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %27 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %25, i32 %26)
  store %struct.batadv_neigh_ifinfo* %27, %struct.batadv_neigh_ifinfo** %11, align 8
  %28 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %29 = icmp ne %struct.batadv_neigh_ifinfo* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %133

31:                                               ; preds = %24
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %33 = call %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv* %32)
  store %struct.batadv_gw_node* %33, %struct.batadv_gw_node** %13, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %37 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NLM_F_MULTI, align 4
  %42 = load i32, i32* @BATADV_CMD_GET_GATEWAYS, align 4
  %43 = call i8* @genlmsg_put(%struct.sk_buff* %34, i32 %35, i32 %40, i32* @batadv_netlink_family, i32 %41, i32 %42)
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* @ENOBUFS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %133

49:                                               ; preds = %31
  %50 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %50, i8* %51)
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  %55 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %13, align 8
  %56 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %10, align 8
  %57 = icmp eq %struct.batadv_gw_node* %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i32, i32* @BATADV_ATTR_FLAG_BEST, align 4
  %61 = call i64 @nla_put_flag(%struct.sk_buff* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 @genlmsg_cancel(%struct.sk_buff* %64, i8* %65)
  br label %133

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load i32, i32* @BATADV_ATTR_ORIG_ADDRESS, align 4
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %10, align 8
  %73 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @nla_put(%struct.sk_buff* %69, i32 %70, i32 %71, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %125, label %79

79:                                               ; preds = %68
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* @BATADV_ATTR_TQ, align 4
  %82 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %83 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @nla_put_u8(%struct.sk_buff* %80, i32 %81, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %125, label %88

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = load i32, i32* @BATADV_ATTR_ROUTER, align 4
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %93 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @nla_put(%struct.sk_buff* %89, i32 %90, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %88
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = load i32, i32* @BATADV_ATTR_HARD_IFNAME, align 4
  %100 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %101 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @nla_put_string(%struct.sk_buff* %98, i32 %99, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %97
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* @BATADV_ATTR_BANDWIDTH_DOWN, align 4
  %112 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %10, align 8
  %113 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @nla_put_u32(%struct.sk_buff* %110, i32 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* @BATADV_ATTR_BANDWIDTH_UP, align 4
  %120 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %10, align 8
  %121 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @nla_put_u32(%struct.sk_buff* %118, i32 %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117, %109, %97, %88, %79, %68
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 @genlmsg_cancel(%struct.sk_buff* %126, i8* %127)
  br label %133

129:                                              ; preds = %117
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @genlmsg_end(%struct.sk_buff* %130, i8* %131)
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %129, %125, %63, %46, %30, %23
  %134 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %13, align 8
  %135 = icmp ne %struct.batadv_gw_node* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %13, align 8
  %138 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %141 = icmp ne %struct.batadv_neigh_ifinfo* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %144 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %147 = icmp ne %struct.batadv_neigh_node* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %150 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %14, align 4
  ret i32 %152
}

declare dso_local %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, i32) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
