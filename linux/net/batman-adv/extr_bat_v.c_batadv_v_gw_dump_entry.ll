; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_gw_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_gw_dump_entry.c"
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
@BATADV_ATTR_THROUGHPUT = common dso_local global i32 0, align 4
@BATADV_ATTR_ROUTER = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFNAME = common dso_local global i32 0, align 4
@BATADV_ATTR_BANDWIDTH_DOWN = common dso_local global i32 0, align 4
@BATADV_ATTR_BANDWIDTH_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_gw_node*)* @batadv_v_gw_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_gw_dump_entry(%struct.sk_buff* %0, i32 %1, %struct.netlink_callback* %2, %struct.batadv_priv* %3, %struct.batadv_gw_node* %4) #0 {
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
  br label %153

24:                                               ; preds = %5
  %25 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %26 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %27 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %25, i32 %26)
  store %struct.batadv_neigh_ifinfo* %27, %struct.batadv_neigh_ifinfo** %11, align 8
  %28 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %29 = icmp ne %struct.batadv_neigh_ifinfo* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %153

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
  br label %153

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
  br label %153

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
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @genlmsg_cancel(%struct.sk_buff* %80, i8* %81)
  br label %153

83:                                               ; preds = %68
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = load i32, i32* @BATADV_ATTR_THROUGHPUT, align 4
  %86 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %87 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @nla_put_u32(%struct.sk_buff* %84, i32 %85, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @genlmsg_cancel(%struct.sk_buff* %93, i8* %94)
  br label %153

96:                                               ; preds = %83
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load i32, i32* @BATADV_ATTR_ROUTER, align 4
  %99 = load i32, i32* @ETH_ALEN, align 4
  %100 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %101 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @nla_put(%struct.sk_buff* %97, i32 %98, i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @genlmsg_cancel(%struct.sk_buff* %106, i8* %107)
  br label %153

109:                                              ; preds = %96
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* @BATADV_ATTR_HARD_IFNAME, align 4
  %112 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %113 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @nla_put_string(%struct.sk_buff* %110, i32 %111, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %109
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = call i32 @genlmsg_cancel(%struct.sk_buff* %122, i8* %123)
  br label %153

125:                                              ; preds = %109
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load i32, i32* @BATADV_ATTR_BANDWIDTH_DOWN, align 4
  %128 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %10, align 8
  %129 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @nla_put_u32(%struct.sk_buff* %126, i32 %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @genlmsg_cancel(%struct.sk_buff* %134, i8* %135)
  br label %153

137:                                              ; preds = %125
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = load i32, i32* @BATADV_ATTR_BANDWIDTH_UP, align 4
  %140 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %10, align 8
  %141 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @nla_put_u32(%struct.sk_buff* %138, i32 %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @genlmsg_cancel(%struct.sk_buff* %146, i8* %147)
  br label %153

149:                                              ; preds = %137
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 @genlmsg_end(%struct.sk_buff* %150, i8* %151)
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %149, %145, %133, %121, %105, %92, %79, %63, %46, %30, %23
  %154 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %13, align 8
  %155 = icmp ne %struct.batadv_gw_node* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %13, align 8
  %158 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %161 = icmp ne %struct.batadv_neigh_ifinfo* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %164 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %167 = icmp ne %struct.batadv_neigh_node* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %170 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %14, align 4
  ret i32 %172
}

declare dso_local %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, i32) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

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
