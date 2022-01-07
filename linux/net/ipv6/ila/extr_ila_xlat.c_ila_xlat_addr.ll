; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ila_map = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.net = type { i32 }
%struct.ila_net = type { i32 }
%struct.ila_addr = type { i32 }

@ila_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ila_xlat_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ila_xlat_addr(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ila_map*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ila_net*, align 8
  %9 = alloca %struct.ila_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %10)
  store %struct.ipv6hdr* %11, %struct.ipv6hdr** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call %struct.net* @dev_net(%struct.TYPE_4__* %14)
  store %struct.net* %15, %struct.net** %7, align 8
  %16 = load %struct.net*, %struct.net** %7, align 8
  %17 = load i32, i32* @ila_net_id, align 4
  %18 = call %struct.ila_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.ila_net* %18, %struct.ila_net** %8, align 8
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 0
  %21 = call %struct.ila_addr* @ila_a2i(i32* %20)
  store %struct.ila_addr* %21, %struct.ila_addr** %9, align 8
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.ila_addr*, %struct.ila_addr** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ila_net*, %struct.ila_net** %8, align 8
  %30 = call %struct.ila_map* @ila_lookup_wildcards(%struct.ila_addr* %23, i32 %28, %struct.ila_net* %29)
  store %struct.ila_map* %30, %struct.ila_map** %5, align 8
  %31 = load %struct.ila_map*, %struct.ila_map** %5, align 8
  %32 = icmp ne %struct.ila_map* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load %struct.ila_map*, %struct.ila_map** %5, align 8
  %36 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ila_update_ipv6_locator(%struct.sk_buff* %34, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %2
  %41 = call i32 (...) @rcu_read_unlock()
  ret i32 0
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local %struct.ila_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.ila_addr* @ila_a2i(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ila_map* @ila_lookup_wildcards(%struct.ila_addr*, i32, %struct.ila_net*) #1

declare dso_local i32 @ila_update_ipv6_locator(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
