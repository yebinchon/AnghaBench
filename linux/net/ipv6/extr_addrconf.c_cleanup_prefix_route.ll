; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_cleanup_prefix_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_cleanup_prefix_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fib6_info = type { i32 }

@RTF_DEFAULT = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*, i64, i32)* @cleanup_prefix_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_prefix_route(%struct.inet6_ifaddr* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib6_info*, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %9 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %8, i32 0, i32 2
  %10 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %11 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %14 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTF_DEFAULT, align 4
  %19 = call %struct.fib6_info* @addrconf_get_prefix_route(i32* %9, i32 %12, i32 %17, i32 0, i32 %18, i32 1)
  store %struct.fib6_info* %19, %struct.fib6_info** %7, align 8
  %20 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %21 = icmp ne %struct.fib6_info* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %27 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_net(i32 %30)
  %32 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %33 = call i32 @ip6_del_rt(i32 %31, %struct.fib6_info* %32)
  br label %48

34:                                               ; preds = %22
  %35 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %36 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RTF_EXPIRES, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @fib6_set_expires(%struct.fib6_info* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %47 = call i32 @fib6_info_release(%struct.fib6_info* %46)
  br label %48

48:                                               ; preds = %45, %25
  br label %49

49:                                               ; preds = %48, %3
  ret void
}

declare dso_local %struct.fib6_info* @addrconf_get_prefix_route(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip6_del_rt(i32, %struct.fib6_info*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @fib6_set_expires(%struct.fib6_info*, i64) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
