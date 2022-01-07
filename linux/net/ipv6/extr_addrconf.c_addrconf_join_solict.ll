; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_join_solict.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_join_solict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addrconf_join_solict(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.in6_addr, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IFF_LOOPBACK, align 4
  %10 = load i32, i32* @IFF_NOARP, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %17 = call i32 @addrconf_addr_solict_mult(%struct.in6_addr* %16, %struct.in6_addr* %5)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @ipv6_dev_mc_inc(%struct.net_device* %18, %struct.in6_addr* %5)
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @addrconf_addr_solict_mult(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_dev_mc_inc(%struct.net_device*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
