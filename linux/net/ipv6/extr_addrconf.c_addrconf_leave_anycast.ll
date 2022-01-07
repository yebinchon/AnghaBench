; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_leave_anycast.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_leave_anycast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*)* @addrconf_leave_anycast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_leave_anycast(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca %struct.in6_addr, align 4
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  %4 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 127
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %11 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %10, i32 0, i32 2
  %12 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %13 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ipv6_addr_prefix(%struct.in6_addr* %3, i32* %11, i32 %14)
  %16 = call i64 @ipv6_addr_any(%struct.in6_addr* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %24

19:                                               ; preds = %9
  %20 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %21 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__ipv6_dev_ac_dec(i32 %22, %struct.in6_addr* %3)
  br label %24

24:                                               ; preds = %19, %18, %8
  ret void
}

declare dso_local i32 @ipv6_addr_prefix(%struct.in6_addr*, i32*, i32) #1

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @__ipv6_dev_ac_dec(i32, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
