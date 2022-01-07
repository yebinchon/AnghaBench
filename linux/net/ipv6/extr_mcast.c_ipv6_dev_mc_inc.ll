; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_dev_mc_inc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_dev_mc_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }

@MCAST_EXCLUDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_dev_mc_inc(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %7 = load i32, i32* @MCAST_EXCLUDE, align 4
  %8 = call i32 @__ipv6_dev_mc_inc(%struct.net_device* %5, %struct.in6_addr* %6, i32 %7)
  ret i32 %8
}

declare dso_local i32 @__ipv6_dev_mc_inc(%struct.net_device*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
