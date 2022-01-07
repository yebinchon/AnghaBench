; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_add_linklocal.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_add_linklocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.ifa6_config = type { i32, i32, i32, i32, i32, %struct.in6_addr* }
%struct.inet6_ifaddr = type { i32, i32 }

@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_LINK = common dso_local global i32 0, align 4
@INFINITY_LIFE_TIME = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addrconf_add_linklocal(%struct.inet6_dev* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifa6_config, align 8
  %8 = alloca %struct.inet6_ifaddr*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %7, i32 0, i32 0
  store i32 64, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %7, i32 0, i32 1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IFA_F_PERMANENT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %7, i32 0, i32 2
  %15 = load i32, i32* @IFA_LINK, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %7, i32 0, i32 3
  %17 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %7, i32 0, i32 4
  %19 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %7, i32 0, i32 5
  %21 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %21, %struct.in6_addr** %20, align 8
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %23 = call %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev* %22, %struct.ifa6_config* %7, i32 1, i32* null)
  store %struct.inet6_ifaddr* %23, %struct.inet6_ifaddr** %8, align 8
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %25 = call i32 @IS_ERR(%struct.inet6_ifaddr* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %3
  %28 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %29 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %28, i32 0, i32 1
  %30 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %31 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %34 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i32 @addrconf_prefix_route(i32* %29, i32 %32, i32 0, i32 %35, i32 0, i32 0, i32 %36)
  %38 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %39 = call i32 @addrconf_dad_start(%struct.inet6_ifaddr* %38)
  %40 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %41 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %40)
  br label %42

42:                                               ; preds = %27, %3
  ret void
}

declare dso_local %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev*, %struct.ifa6_config*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @addrconf_dad_start(%struct.inet6_ifaddr*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
