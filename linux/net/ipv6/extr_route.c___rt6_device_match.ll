; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___rt6_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___rt6_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_nh = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }

@RTNH_F_DEAD = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib6_nh*, %struct.in6_addr*, i32, i32)* @__rt6_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rt6_device_match(%struct.net* %0, %struct.fib6_nh* %1, %struct.in6_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib6_nh*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.fib6_nh* %1, %struct.fib6_nh** %8, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.fib6_nh*, %struct.fib6_nh** %8, align 8
  %14 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RTNH_F_DEAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %46

20:                                               ; preds = %5
  %21 = load %struct.fib6_nh*, %struct.fib6_nh** %8, align 8
  %22 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %21, i32 0, i32 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %12, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %12, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %46

33:                                               ; preds = %26
  br label %45

34:                                               ; preds = %20
  %35 = load %struct.net*, %struct.net** %7, align 8
  %36 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @ipv6_chk_addr(%struct.net* %35, %struct.in6_addr* %36, %struct.net_device* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %33
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %43, %32, %19
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @ipv6_chk_addr(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
