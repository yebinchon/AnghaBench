; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_dump_wpan_phy_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_dump_wpan_phy_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.nl802154_dump_wpan_phy_state = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg802154_registered_device = type { i32 }

@nl802154_fam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GENL_HDRLEN = common dso_local global i64 0, align 8
@nl802154_policy = common dso_local global i32 0, align 4
@NL802154_ATTR_WPAN_PHY = common dso_local global i64 0, align 8
@NL802154_ATTR_WPAN_DEV = common dso_local global i64 0, align 8
@NL802154_ATTR_IFINDEX = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.nl802154_dump_wpan_phy_state*)* @nl802154_dump_wpan_phy_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_dump_wpan_phy_parse(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.nl802154_dump_wpan_phy_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.nl802154_dump_wpan_phy_state*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.cfg802154_registered_device*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.nl802154_dump_wpan_phy_state* %2, %struct.nl802154_dump_wpan_phy_state** %7, align 8
  %13 = call %struct.nlattr** @genl_family_attrbuf(%struct.TYPE_5__* @nl802154_fam)
  store %struct.nlattr** %13, %struct.nlattr*** %8, align 8
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @GENL_HDRLEN, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nl802154_fam, i32 0, i32 1), align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nl802154_fam, i32 0, i32 0), align 8
  %22 = load i32, i32* @nl802154_policy, align 4
  %23 = call i32 @nlmsg_parse_deprecated(i32 %16, i64 %19, %struct.nlattr** %20, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

27:                                               ; preds = %3
  %28 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %29 = load i64, i64* @NL802154_ATTR_WPAN_PHY, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %35 = load i64, i64* @NL802154_ATTR_WPAN_PHY, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i8* @nla_get_u32(%struct.nlattr* %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.nl802154_dump_wpan_phy_state*, %struct.nl802154_dump_wpan_phy_state** %7, align 8
  %41 = getelementptr inbounds %struct.nl802154_dump_wpan_phy_state, %struct.nl802154_dump_wpan_phy_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %27
  %43 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %44 = load i64, i64* @NL802154_ATTR_WPAN_DEV, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %50 = load i64, i64* @NL802154_ATTR_WPAN_DEV, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_u64(%struct.nlattr* %52)
  %54 = ashr i32 %53, 32
  %55 = load %struct.nl802154_dump_wpan_phy_state*, %struct.nl802154_dump_wpan_phy_state** %7, align 8
  %56 = getelementptr inbounds %struct.nl802154_dump_wpan_phy_state, %struct.nl802154_dump_wpan_phy_state* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %42
  %58 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %59 = load i64, i64* @NL802154_ATTR_IFINDEX, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  %64 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %65 = load i64, i64* @NL802154_ATTR_IFINDEX, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i8* @nla_get_u32(%struct.nlattr* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i32 %70)
  store %struct.net_device* %71, %struct.net_device** %10, align 8
  %72 = load %struct.net_device*, %struct.net_device** %10, align 8
  %73 = icmp ne %struct.net_device* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %96

77:                                               ; preds = %63
  %78 = load %struct.net_device*, %struct.net_device** %10, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.net_device*, %struct.net_device** %10, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.cfg802154_registered_device* @wpan_phy_to_rdev(i32 %87)
  store %struct.cfg802154_registered_device* %88, %struct.cfg802154_registered_device** %11, align 8
  %89 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %11, align 8
  %90 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nl802154_dump_wpan_phy_state*, %struct.nl802154_dump_wpan_phy_state** %7, align 8
  %93 = getelementptr inbounds %struct.nl802154_dump_wpan_phy_state, %struct.nl802154_dump_wpan_phy_state* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %82, %77
  br label %95

95:                                               ; preds = %94, %57
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %74, %26
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.nlattr** @genl_family_attrbuf(%struct.TYPE_5__*) #1

declare dso_local i32 @nlmsg_parse_deprecated(i32, i64, %struct.nlattr**, i32, i32, i32*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u64(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32*, i32) #1

declare dso_local %struct.cfg802154_registered_device* @wpan_phy_to_rdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
