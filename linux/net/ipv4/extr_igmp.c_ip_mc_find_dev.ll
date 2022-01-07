; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_find_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32 }
%struct.net = type { i32 }
%struct.ip_mreqn = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in_device* (%struct.net*, %struct.ip_mreqn*)* @ip_mc_find_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in_device* @ip_mc_find_dev(%struct.net* %0, %struct.ip_mreqn* %1) #0 {
  %3 = alloca %struct.in_device*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ip_mreqn*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.in_device*, align 8
  %8 = alloca %struct.rtable*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.ip_mreqn* %1, %struct.ip_mreqn** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store %struct.in_device* null, %struct.in_device** %7, align 8
  %9 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %10 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %16 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.in_device* @inetdev_by_index(%struct.net* %14, i32 %17)
  store %struct.in_device* %18, %struct.in_device** %7, align 8
  %19 = load %struct.in_device*, %struct.in_device** %7, align 8
  store %struct.in_device* %19, %struct.in_device** %3, align 8
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %22 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.net*, %struct.net** %4, align 8
  %28 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %29 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.net_device* @__ip_dev_find(%struct.net* %27, i64 %31, i32 0)
  store %struct.net_device* %32, %struct.net_device** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store %struct.in_device* null, %struct.in_device** %3, align 8
  br label %71

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = load %struct.net*, %struct.net** %4, align 8
  %42 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %43 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.rtable* @ip_route_output(%struct.net* %41, i32 %45, i32 0, i32 0, i32 0)
  store %struct.rtable* %46, %struct.rtable** %8, align 8
  %47 = load %struct.rtable*, %struct.rtable** %8, align 8
  %48 = call i32 @IS_ERR(%struct.rtable* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.rtable*, %struct.rtable** %8, align 8
  %52 = getelementptr inbounds %struct.rtable, %struct.rtable* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  store %struct.net_device* %54, %struct.net_device** %6, align 8
  %55 = load %struct.rtable*, %struct.rtable** %8, align 8
  %56 = call i32 @ip_rt_put(%struct.rtable* %55)
  br label %57

57:                                               ; preds = %50, %40
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = icmp ne %struct.net_device* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %66 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %67)
  store %struct.in_device* %68, %struct.in_device** %7, align 8
  br label %69

69:                                               ; preds = %61, %58
  %70 = load %struct.in_device*, %struct.in_device** %7, align 8
  store %struct.in_device* %70, %struct.in_device** %3, align 8
  br label %71

71:                                               ; preds = %69, %35, %13
  %72 = load %struct.in_device*, %struct.in_device** %3, align 8
  ret %struct.in_device* %72
}

declare dso_local %struct.in_device* @inetdev_by_index(%struct.net*, i32) #1

declare dso_local %struct.net_device* @__ip_dev_find(%struct.net*, i64, i32) #1

declare dso_local %struct.rtable* @ip_route_output(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
