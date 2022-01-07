; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_get_lladdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_get_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_get_lladdr(%struct.net_device* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EADDRNOTAVAIL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %12)
  store %struct.inet6_dev* %13, %struct.inet6_dev** %7, align 8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %15 = icmp ne %struct.inet6_dev* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 0
  %19 = call i32 @read_lock_bh(i32* %18)
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %21 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @__ipv6_get_lladdr(%struct.inet6_dev* %20, %struct.in6_addr* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %25 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %24, i32 0, i32 0
  %26 = call i32 @read_unlock_bh(i32* %25)
  br label %27

27:                                               ; preds = %16, %3
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @__ipv6_get_lladdr(%struct.inet6_dev*, %struct.in6_addr*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
