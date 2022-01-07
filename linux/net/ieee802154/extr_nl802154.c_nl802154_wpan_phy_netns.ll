; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_wpan_phy_netns.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_wpan_phy_netns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.cfg802154_registered_device** }
%struct.cfg802154_registered_device = type { i32 }
%struct.net = type { i32 }

@NL802154_ATTR_PID = common dso_local global i64 0, align 8
@NL802154_ATTR_NETNS_FD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_wpan_phy_netns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_wpan_phy_netns(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg802154_registered_device*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.cfg802154_registered_device**, %struct.cfg802154_registered_device*** %12, align 8
  %14 = getelementptr inbounds %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %13, i64 0
  %15 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %14, align 8
  store %struct.cfg802154_registered_device* %15, %struct.cfg802154_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @NL802154_ATTR_PID, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @NL802154_ATTR_PID, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @nla_get_u32(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.net* @get_net_ns_by_pid(i32 %31)
  store %struct.net* %32, %struct.net** %7, align 8
  br label %55

33:                                               ; preds = %2
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @NL802154_ATTR_NETNS_FD, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @NL802154_ATTR_NETNS_FD, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @nla_get_u32(i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.net* @get_net_ns_by_fd(i32 %49)
  store %struct.net* %50, %struct.net** %7, align 8
  br label %54

51:                                               ; preds = %33
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %77

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %23
  %56 = load %struct.net*, %struct.net** %7, align 8
  %57 = call i64 @IS_ERR(%struct.net* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.net*, %struct.net** %7, align 8
  %61 = call i32 @PTR_ERR(%struct.net* %60)
  store i32 %61, i32* %3, align 4
  br label %77

62:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  %63 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %64 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %63, i32 0, i32 0
  %65 = call i32 @wpan_phy_net(i32* %64)
  %66 = load %struct.net*, %struct.net** %7, align 8
  %67 = call i32 @net_eq(i32 %65, %struct.net* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %71 = load %struct.net*, %struct.net** %7, align 8
  %72 = call i32 @cfg802154_switch_netns(%struct.cfg802154_registered_device* %70, %struct.net* %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.net*, %struct.net** %7, align 8
  %75 = call i32 @put_net(%struct.net* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %59, %51
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local %struct.net* @get_net_ns_by_pid(i32) #1

declare dso_local %struct.net* @get_net_ns_by_fd(i32) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @wpan_phy_net(i32*) #1

declare dso_local i32 @cfg802154_switch_netns(%struct.cfg802154_registered_device*, %struct.net*) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
