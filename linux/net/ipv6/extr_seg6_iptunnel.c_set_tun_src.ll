; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_set_tun_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_set_tun_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.seg6_pernet_data = type { i32 }

@IPV6_PREFER_SRC_PUBLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.net_device*, %struct.in6_addr*, %struct.in6_addr*)* @set_tun_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tun_src(%struct.net* %0, %struct.net_device* %1, %struct.in6_addr* %2, %struct.in6_addr* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.seg6_pernet_data*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %8, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = call %struct.seg6_pernet_data* @seg6_pernet(%struct.net* %11)
  store %struct.seg6_pernet_data* %12, %struct.seg6_pernet_data** %9, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %9, align 8
  %15 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.in6_addr* @rcu_dereference(i32 %16)
  store %struct.in6_addr* %17, %struct.in6_addr** %10, align 8
  %18 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %19 = call i32 @ipv6_addr_any(%struct.in6_addr* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %23 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %24 = call i32 @memcpy(%struct.in6_addr* %22, %struct.in6_addr* %23, i32 4)
  br label %32

25:                                               ; preds = %4
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %29 = load i32, i32* @IPV6_PREFER_SRC_PUBLIC, align 4
  %30 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %31 = call i32 @ipv6_dev_get_saddr(%struct.net* %26, %struct.net_device* %27, %struct.in6_addr* %28, i32 %29, %struct.in6_addr* %30)
  br label %32

32:                                               ; preds = %25, %21
  %33 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.seg6_pernet_data* @seg6_pernet(%struct.net*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in6_addr* @rcu_dereference(i32) #1

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ipv6_dev_get_saddr(%struct.net*, %struct.net_device*, %struct.in6_addr*, i32, %struct.in6_addr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
