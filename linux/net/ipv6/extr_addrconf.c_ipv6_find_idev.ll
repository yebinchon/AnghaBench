; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_find_idev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_find_idev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32 }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet6_dev* (%struct.net_device*)* @ipv6_find_idev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet6_dev* @ipv6_find_idev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %6)
  store %struct.inet6_dev* %7, %struct.inet6_dev** %4, align 8
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %9 = icmp ne %struct.inet6_dev* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.inet6_dev* @ipv6_add_dev(%struct.net_device* %11)
  store %struct.inet6_dev* %12, %struct.inet6_dev** %4, align 8
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %14 = call i64 @IS_ERR(%struct.inet6_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  store %struct.inet6_dev* %17, %struct.inet6_dev** %2, align 8
  br label %31

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %28 = call i32 @ipv6_mc_up(%struct.inet6_dev* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  store %struct.inet6_dev* %30, %struct.inet6_dev** %2, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  ret %struct.inet6_dev* %32
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local %struct.inet6_dev* @ipv6_add_dev(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_mc_up(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
