; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_modify_prefix_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_modify_prefix_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fib6_info = type { i64 }

@RTF_DEFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IP6_RT_PRIO_ADDRCONF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_ifaddr*, i64, i64)* @modify_prefix_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_prefix_route(%struct.inet6_ifaddr* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet6_ifaddr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fib6_info*, align 8
  %9 = alloca i64, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %11 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %10, i32 0, i32 3
  %12 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %13 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %16 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTF_DEFAULT, align 4
  %21 = call %struct.fib6_info* @addrconf_get_prefix_route(i32* %11, i32 %14, i32 %19, i32 0, i32 %20, i32 1)
  store %struct.fib6_info* %21, %struct.fib6_info** %8, align 8
  %22 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %23 = icmp ne %struct.fib6_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %3
  %28 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %29 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @IP6_RT_PRIO_ADDRCONF, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i64 [ %30, %32 ], [ %34, %33 ]
  store i64 %36, i64* %9, align 8
  %37 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %38 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %35
  %43 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %44 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_net(i32 %47)
  %49 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %50 = call i32 @ip6_del_rt(i32 %48, %struct.fib6_info* %49)
  %51 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %52 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %51, i32 0, i32 3
  %53 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %54 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %57 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %60 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @addrconf_prefix_route(i32* %52, i32 %55, i64 %58, i32 %63, i64 %64, i64 %65, i32 %66)
  br label %81

68:                                               ; preds = %35
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %73 = call i32 @fib6_clean_expires(%struct.fib6_info* %72)
  br label %78

74:                                               ; preds = %68
  %75 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @fib6_set_expires(%struct.fib6_info* %75, i64 %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %80 = call i32 @fib6_info_release(%struct.fib6_info* %79)
  br label %81

81:                                               ; preds = %78, %42
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %24
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.fib6_info* @addrconf_get_prefix_route(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip6_del_rt(i32, %struct.fib6_info*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @fib6_clean_expires(%struct.fib6_info*) #1

declare dso_local i32 @fib6_set_expires(%struct.fib6_info*, i64) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
