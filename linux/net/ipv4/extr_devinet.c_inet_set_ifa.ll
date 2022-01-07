; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_set_ifa.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_set_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in_ifaddr = type { i32, i32, %struct.in_device* }
%struct.in_device = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.in_ifaddr*)* @inet_set_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_set_ifa(%struct.net_device* %0, %struct.in_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in_ifaddr*, align 8
  %6 = alloca %struct.in_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %7)
  store %struct.in_device* %8, %struct.in_device** %6, align 8
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load %struct.in_device*, %struct.in_device** %6, align 8
  %11 = icmp ne %struct.in_device* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %14 = call i32 @inet_free_ifa(%struct.in_ifaddr* %13)
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.in_device*, %struct.in_device** %6, align 8
  %19 = call i32 @ipv4_devconf_setall(%struct.in_device* %18)
  %20 = load %struct.in_device*, %struct.in_device** %6, align 8
  %21 = getelementptr inbounds %struct.in_device, %struct.in_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @neigh_parms_data_state_setall(i32 %22)
  %24 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %25 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %24, i32 0, i32 2
  %26 = load %struct.in_device*, %struct.in_device** %25, align 8
  %27 = load %struct.in_device*, %struct.in_device** %6, align 8
  %28 = icmp ne %struct.in_device* %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %31 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %30, i32 0, i32 2
  %32 = load %struct.in_device*, %struct.in_device** %31, align 8
  %33 = call i32 @WARN_ON(%struct.in_device* %32)
  %34 = load %struct.in_device*, %struct.in_device** %6, align 8
  %35 = call i32 @in_dev_hold(%struct.in_device* %34)
  %36 = load %struct.in_device*, %struct.in_device** %6, align 8
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %38 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %37, i32 0, i32 2
  store %struct.in_device* %36, %struct.in_device** %38, align 8
  br label %39

39:                                               ; preds = %29, %17
  %40 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %41 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ipv4_is_loopback(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @RT_SCOPE_HOST, align 4
  %47 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %48 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %51 = call i32 @inet_insert_ifa(%struct.in_ifaddr* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @inet_free_ifa(%struct.in_ifaddr*) #1

declare dso_local i32 @ipv4_devconf_setall(%struct.in_device*) #1

declare dso_local i32 @neigh_parms_data_state_setall(i32) #1

declare dso_local i32 @WARN_ON(%struct.in_device*) #1

declare dso_local i32 @in_dev_hold(%struct.in_device*) #1

declare dso_local i64 @ipv4_is_loopback(i32) #1

declare dso_local i32 @inet_insert_ifa(%struct.in_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
