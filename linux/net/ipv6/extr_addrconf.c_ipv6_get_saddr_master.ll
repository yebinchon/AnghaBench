; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_get_saddr_master.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_get_saddr_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.ipv6_saddr_dst = type { i32 }
%struct.ipv6_saddr_score = type { i32 }
%struct.inet6_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.net_device*, %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_score*, i32)* @ipv6_get_saddr_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_get_saddr_master(%struct.net* %0, %struct.net_device* %1, %struct.net_device* %2, %struct.ipv6_saddr_dst* %3, %struct.ipv6_saddr_score* %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ipv6_saddr_dst*, align 8
  %11 = alloca %struct.ipv6_saddr_score*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inet6_dev*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.ipv6_saddr_dst* %3, %struct.ipv6_saddr_dst** %10, align 8
  store %struct.ipv6_saddr_score* %4, %struct.ipv6_saddr_score** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %14)
  store %struct.inet6_dev* %15, %struct.inet6_dev** %13, align 8
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %17 = icmp ne %struct.inet6_dev* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %10, align 8
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %22 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @__ipv6_dev_get_saddr(%struct.net* %19, %struct.ipv6_saddr_dst* %20, %struct.inet6_dev* %21, %struct.ipv6_saddr_score* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %18, %6
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %26)
  store %struct.inet6_dev* %27, %struct.inet6_dev** %13, align 8
  %28 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %29 = icmp ne %struct.inet6_dev* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.net*, %struct.net** %7, align 8
  %32 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %10, align 8
  %33 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %34 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @__ipv6_dev_get_saddr(%struct.net* %31, %struct.ipv6_saddr_dst* %32, %struct.inet6_dev* %33, %struct.ipv6_saddr_score* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %12, align 4
  ret i32 %38
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @__ipv6_dev_get_saddr(%struct.net*, %struct.ipv6_saddr_dst*, %struct.inet6_dev*, %struct.ipv6_saddr_score*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
