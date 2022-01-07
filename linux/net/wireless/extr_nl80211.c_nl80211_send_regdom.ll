; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_regdom.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_regdom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NL80211_CMD_GET_REG = common dso_local global i32 0, align 4
@NL80211_ATTR_USER_REG_HINT_TYPE = common dso_local global i32 0, align 4
@NL80211_USER_REG_HINT_CELL_BASE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_SELF_MANAGED_REG = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, i32, i32, %struct.wiphy*, %struct.ieee80211_regdomain*)* @nl80211_send_regdom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_regdom(%struct.sk_buff* %0, %struct.netlink_callback* %1, i32 %2, i32 %3, %struct.wiphy* %4, %struct.ieee80211_regdomain* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.ieee80211_regdomain*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.wiphy* %4, %struct.wiphy** %12, align 8
  store %struct.ieee80211_regdomain* %5, %struct.ieee80211_regdomain** %13, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @NETLINK_CB(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @NL80211_CMD_GET_REG, align 4
  %27 = call i8* @nl80211hdr_put(%struct.sk_buff* %16, i32 %23, i32 %24, i32 %25, i32 %26)
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %90

31:                                               ; preds = %6
  %32 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %32, i8* %33)
  %35 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %13, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call i64 @nl80211_put_regdom(%struct.ieee80211_regdomain* %35, %struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %84

40:                                               ; preds = %31
  %41 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %42 = icmp ne %struct.wiphy* %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = call i64 (...) @reg_last_request_cell_base()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i32, i32* @NL80211_ATTR_USER_REG_HINT_TYPE, align 4
  %49 = load i32, i32* @NL80211_USER_REG_HINT_CELL_BASE, align 4
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %84

53:                                               ; preds = %46, %43, %40
  %54 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %55 = icmp ne %struct.wiphy* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %59 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %60 = call i32 @get_wiphy_idx(%struct.wiphy* %59)
  %61 = call i64 @nla_put_u32(%struct.sk_buff* %57, i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %84

64:                                               ; preds = %56, %53
  %65 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %66 = icmp ne %struct.wiphy* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %69 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load i32, i32* @NL80211_ATTR_WIPHY_SELF_MANAGED_REG, align 4
  %77 = call i64 @nla_put_flag(%struct.sk_buff* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %84

80:                                               ; preds = %74, %67, %64
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @genlmsg_end(%struct.sk_buff* %81, i8* %82)
  store i32 0, i32* %7, align 4
  br label %90

84:                                               ; preds = %79, %63, %52, %39
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @genlmsg_cancel(%struct.sk_buff* %85, i8* %86)
  %88 = load i32, i32* @EMSGSIZE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %80, %30
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i64 @nl80211_put_regdom(%struct.ieee80211_regdomain*, %struct.sk_buff*) #1

declare dso_local i64 @reg_last_request_cell_base(...) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
