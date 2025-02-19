; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_add_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_ifaddr = type { i32, i32 }
%struct.ifa6_config = type { i32, i32, i32, i32, i32, %struct.in6_addr* }

@INFINITY_LIFE_TIME = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.in6_addr*, i32, i32)* @add_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_addr(%struct.inet6_dev* %0, %struct.in6_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet6_ifaddr*, align 8
  %10 = alloca %struct.ifa6_config, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 1
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 2
  %16 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 3
  %18 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 4
  %20 = load i32, i32* @IFA_F_PERMANENT, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 5
  %22 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  store %struct.in6_addr* %22, %struct.in6_addr** %21, align 8
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %24 = call %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev* %23, %struct.ifa6_config* %10, i32 1, i32* null)
  store %struct.inet6_ifaddr* %24, %struct.inet6_ifaddr** %9, align 8
  %25 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %26 = call i32 @IS_ERR(%struct.inet6_ifaddr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %4
  %29 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %30 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %35 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %39 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %42 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_net(i32 %43)
  %45 = call i32 @rt_genid_bump_ipv6(i32 %44)
  %46 = load i32, i32* @RTM_NEWADDR, align 4
  %47 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %48 = call i32 @ipv6_ifa_notify(i32 %46, %struct.inet6_ifaddr* %47)
  %49 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %50 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %49)
  br label %51

51:                                               ; preds = %28, %4
  ret void
}

declare dso_local %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev*, %struct.ifa6_config*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.inet6_ifaddr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rt_genid_bump_ipv6(i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
