; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_chk_acast_addr_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_chk_acast_addr_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }

@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_chk_acast_addr_src(%struct.net* %0, %struct.net_device* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %9 = call i32 @ipv6_addr_type(%struct.in6_addr* %8)
  %10 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi %struct.net_device* [ %14, %13 ], [ null, %15 ]
  %18 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %19 = call i32 @ipv6_chk_acast_addr(%struct.net* %7, %struct.net_device* %17, %struct.in6_addr* %18)
  ret i32 %19
}

declare dso_local i32 @ipv6_chk_acast_addr(%struct.net*, %struct.net_device*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
