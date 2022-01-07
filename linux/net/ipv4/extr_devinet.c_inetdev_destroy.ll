; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inetdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inetdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.in_ifaddr = type { i32 }

@arp_tbl = common dso_local global i32 0, align 4
@in_dev_rcu_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_device*)* @inetdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inetdev_destroy(%struct.in_device* %0) #0 {
  %2 = alloca %struct.in_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.in_ifaddr*, align 8
  store %struct.in_device* %0, %struct.in_device** %2, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.in_device*, %struct.in_device** %2, align 8
  %7 = getelementptr inbounds %struct.in_device, %struct.in_device* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.in_device*, %struct.in_device** %2, align 8
  %10 = getelementptr inbounds %struct.in_device, %struct.in_device* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.in_device*, %struct.in_device** %2, align 8
  %12 = call i32 @ip_mc_destroy_dev(%struct.in_device* %11)
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.in_device*, %struct.in_device** %2, align 8
  %15 = getelementptr inbounds %struct.in_device, %struct.in_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.in_ifaddr* @rtnl_dereference(i32 %16)
  store %struct.in_ifaddr* %17, %struct.in_ifaddr** %4, align 8
  %18 = icmp ne %struct.in_ifaddr* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.in_device*, %struct.in_device** %2, align 8
  %21 = load %struct.in_device*, %struct.in_device** %2, align 8
  %22 = getelementptr inbounds %struct.in_device, %struct.in_device* %21, i32 0, i32 3
  %23 = call i32 @inet_del_ifa(%struct.in_device* %20, i32* %22, i32 0)
  %24 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %25 = call i32 @inet_free_ifa(%struct.in_ifaddr* %24)
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RCU_INIT_POINTER(i32 %29, i32* null)
  %31 = load %struct.in_device*, %struct.in_device** %2, align 8
  %32 = call i32 @devinet_sysctl_unregister(%struct.in_device* %31)
  %33 = load %struct.in_device*, %struct.in_device** %2, align 8
  %34 = getelementptr inbounds %struct.in_device, %struct.in_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @neigh_parms_release(i32* @arp_tbl, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @arp_ifdown(%struct.net_device* %37)
  %39 = load %struct.in_device*, %struct.in_device** %2, align 8
  %40 = getelementptr inbounds %struct.in_device, %struct.in_device* %39, i32 0, i32 1
  %41 = load i32, i32* @in_dev_rcu_put, align 4
  %42 = call i32 @call_rcu(i32* %40, i32 %41)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ip_mc_destroy_dev(%struct.in_device*) #1

declare dso_local %struct.in_ifaddr* @rtnl_dereference(i32) #1

declare dso_local i32 @inet_del_ifa(%struct.in_device*, i32*, i32) #1

declare dso_local i32 @inet_free_ifa(%struct.in_ifaddr*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @devinet_sysctl_unregister(%struct.in_device*) #1

declare dso_local i32 @neigh_parms_release(i32*, i32) #1

declare dso_local i32 @arp_ifdown(%struct.net_device*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
