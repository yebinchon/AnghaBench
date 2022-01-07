; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet6_dev* (%struct.net_device*)* @addrconf_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet6_dev* @addrconf_add_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.inet6_dev* @ipv6_find_idev(%struct.net_device* %6)
  store %struct.inet6_dev* %7, %struct.inet6_dev** %4, align 8
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %9 = call i64 @IS_ERR(%struct.inet6_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  store %struct.inet6_dev* %12, %struct.inet6_dev** %2, align 8
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inet6_dev* @ERR_PTR(i32 %21)
  store %struct.inet6_dev* %22, %struct.inet6_dev** %2, align 8
  br label %39

23:                                               ; preds = %13
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_LOOPBACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netif_is_l3_master(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @addrconf_add_mroute(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %30, %23
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  store %struct.inet6_dev* %38, %struct.inet6_dev** %2, align 8
  br label %39

39:                                               ; preds = %37, %19, %11
  %40 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  ret %struct.inet6_dev* %40
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @ipv6_find_idev(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.inet6_dev*) #1

declare dso_local %struct.inet6_dev* @ERR_PTR(i32) #1

declare dso_local i32 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local i32 @addrconf_add_mroute(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
