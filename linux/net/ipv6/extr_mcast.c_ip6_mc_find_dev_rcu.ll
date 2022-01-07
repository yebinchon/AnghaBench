; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_find_dev_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_find_dev_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i64 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.rt6_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet6_dev* (%struct.net*, %struct.in6_addr*, i32)* @ip6_mc_find_dev_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet6_dev* @ip6_mc_find_dev_rcu(%struct.net* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca %struct.rt6_info*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.net_device* null, %struct.net_device** %8, align 8
  store %struct.inet6_dev* null, %struct.inet6_dev** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %16 = call %struct.rt6_info* @rt6_lookup(%struct.net* %14, %struct.in6_addr* %15, i32* null, i32 0, i32* null, i32 0)
  store %struct.rt6_info* %16, %struct.rt6_info** %10, align 8
  %17 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %18 = icmp ne %struct.rt6_info* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %21 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %8, align 8
  %24 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %25 = call i32 @ip6_rt_put(%struct.rt6_info* %24)
  br label %26

26:                                               ; preds = %19, %13
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %28, i32 %29)
  store %struct.net_device* %30, %struct.net_device** %8, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store %struct.inet6_dev* null, %struct.inet6_dev** %4, align 8
  br label %55

35:                                               ; preds = %31
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %36)
  store %struct.inet6_dev* %37, %struct.inet6_dev** %9, align 8
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %39 = icmp ne %struct.inet6_dev* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.inet6_dev* null, %struct.inet6_dev** %4, align 8
  br label %55

41:                                               ; preds = %35
  %42 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %43 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %42, i32 0, i32 0
  %44 = call i32 @read_lock_bh(i32* %43)
  %45 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %46 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %51 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %50, i32 0, i32 0
  %52 = call i32 @read_unlock_bh(i32* %51)
  store %struct.inet6_dev* null, %struct.inet6_dev** %4, align 8
  br label %55

53:                                               ; preds = %41
  %54 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  store %struct.inet6_dev* %54, %struct.inet6_dev** %4, align 8
  br label %55

55:                                               ; preds = %53, %49, %40, %34
  %56 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  ret %struct.inet6_dev* %56
}

declare dso_local %struct.rt6_info* @rt6_lookup(%struct.net*, %struct.in6_addr*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
