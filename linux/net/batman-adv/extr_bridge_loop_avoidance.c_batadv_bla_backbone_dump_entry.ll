; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_backbone_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_backbone_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.batadv_bla_backbone_gw = type { i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_BLA_BACKBONE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BATADV_ATTR_BLA_OWN = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_BACKBONE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_VID = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_CRC = common dso_local global i32 0, align 4
@BATADV_ATTR_LAST_SEEN_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_hard_iface*, %struct.batadv_bla_backbone_gw*)* @batadv_bla_backbone_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_bla_backbone_dump_entry(%struct.sk_buff* %0, i32 %1, %struct.netlink_callback* %2, %struct.batadv_hard_iface* %3, %struct.batadv_bla_backbone_gw* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_bla_backbone_gw*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %9, align 8
  store %struct.batadv_bla_backbone_gw* %4, %struct.batadv_bla_backbone_gw** %10, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %18 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %16, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %27 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NLM_F_MULTI, align 4
  %32 = load i32, i32* @BATADV_CMD_GET_BLA_BACKBONE, align 4
  %33 = call i8* @genlmsg_put(%struct.sk_buff* %24, i32 %25, i32 %30, i32* @batadv_netlink_family, i32 %31, i32 %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %16, align 4
  br label %112

39:                                               ; preds = %5
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %40, i8* %41)
  %43 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %44 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @batadv_compare_eth(i32 %45, i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %49 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %48, i32 0, i32 3
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %52 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %55 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %54, i32 0, i32 3
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load i64, i64* @jiffies, align 8
  %58 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %59 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = call i32 @jiffies_to_msecs(i64 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %39
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* @BATADV_ATTR_BLA_OWN, align 4
  %68 = call i64 @nla_put_flag(%struct.sk_buff* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 @genlmsg_cancel(%struct.sk_buff* %71, i8* %72)
  br label %112

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %39
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load i32, i32* @BATADV_ATTR_BLA_BACKBONE, align 4
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %80 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @nla_put(%struct.sk_buff* %76, i32 %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %75
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load i32, i32* @BATADV_ATTR_BLA_VID, align 4
  %87 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %88 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @nla_put_u16(%struct.sk_buff* %85, i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i32, i32* @BATADV_ATTR_BLA_CRC, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @nla_put_u16(%struct.sk_buff* %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load i32, i32* @BATADV_ATTR_LAST_SEEN_MSECS, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i64 @nla_put_u32(%struct.sk_buff* %99, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98, %92, %84, %75
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @genlmsg_cancel(%struct.sk_buff* %105, i8* %106)
  br label %112

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = call i32 @genlmsg_end(%struct.sk_buff* %109, i8* %110)
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %108, %104, %70, %36
  %113 = load i32, i32* %16, align 4
  ret i32 %113
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i32 @batadv_compare_eth(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
