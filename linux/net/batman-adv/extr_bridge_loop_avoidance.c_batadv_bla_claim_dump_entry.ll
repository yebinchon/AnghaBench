; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_claim_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_claim_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.batadv_bla_claim = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_BLA_CLAIM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_OWN = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_VID = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_BACKBONE = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_hard_iface*, %struct.batadv_bla_claim*)* @batadv_bla_claim_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_bla_claim_dump_entry(%struct.sk_buff* %0, i32 %1, %struct.netlink_callback* %2, %struct.batadv_hard_iface* %3, %struct.batadv_bla_claim* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_bla_claim*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %9, align 8
  store %struct.batadv_bla_claim* %4, %struct.batadv_bla_claim** %10, align 8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %17 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NLM_F_MULTI, align 4
  %31 = load i32, i32* @BATADV_CMD_GET_BLA_CLAIM, align 4
  %32 = call i8* @genlmsg_put(%struct.sk_buff* %23, i32 %24, i32 %29, i32* @batadv_netlink_family, i32 %30, i32 %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOBUFS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %15, align 4
  br label %118

38:                                               ; preds = %5
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %39, i8* %40)
  %42 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %10, align 8
  %43 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @batadv_compare_eth(i32 %46, i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %10, align 8
  %50 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %10, align 8
  %55 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %10, align 8
  %60 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %38
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* @BATADV_ATTR_BLA_OWN, align 4
  %69 = call i64 @nla_put_flag(%struct.sk_buff* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @genlmsg_cancel(%struct.sk_buff* %72, i8* %73)
  br label %118

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %38
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i32, i32* @BATADV_ATTR_BLA_ADDRESS, align 4
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %10, align 8
  %81 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @nla_put(%struct.sk_buff* %77, i32 %78, i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %76
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = load i32, i32* @BATADV_ATTR_BLA_VID, align 4
  %88 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %10, align 8
  %89 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @nla_put_u16(%struct.sk_buff* %86, i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %110, label %93

93:                                               ; preds = %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* @BATADV_ATTR_BLA_BACKBONE, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %10, align 8
  %98 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @nla_put(%struct.sk_buff* %94, i32 %95, i32 %96, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %93
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load i32, i32* @BATADV_ATTR_BLA_CRC, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @nla_put_u16(%struct.sk_buff* %105, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104, %93, %85, %76
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @genlmsg_cancel(%struct.sk_buff* %111, i8* %112)
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @genlmsg_end(%struct.sk_buff* %115, i8* %116)
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %114, %110, %71, %35
  %119 = load i32, i32* %15, align 4
  ret i32 %119
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i32 @batadv_compare_eth(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
