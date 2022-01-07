; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_fixup_permanent_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_fixup_permanent_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.inet6_ifaddr = type { i32, i64, i32, i32, i32, i32, %struct.fib6_info* }
%struct.fib6_info = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IFA_F_NOPREFIXROUTE = common dso_local global i32 0, align 4
@INET6_IFADDR_STATE_PREDAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.inet6_dev*, %struct.inet6_ifaddr*)* @fixup_permanent_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_permanent_addr(%struct.net* %0, %struct.inet6_dev* %1, %struct.inet6_ifaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.inet6_ifaddr*, align 8
  %8 = alloca %struct.fib6_info*, align 8
  %9 = alloca %struct.fib6_info*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %6, align 8
  store %struct.inet6_ifaddr* %2, %struct.inet6_ifaddr** %7, align 8
  %10 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %11 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %10, i32 0, i32 6
  %12 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %13 = icmp ne %struct.fib6_info* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %16 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %15, i32 0, i32 6
  %17 = load %struct.fib6_info*, %struct.fib6_info** %16, align 8
  %18 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.net*, %struct.net** %5, align 8
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %25 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %24, i32 0, i32 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.fib6_info* @addrconf_f6i_alloc(%struct.net* %22, %struct.inet6_dev* %23, i32* %25, i32 0, i32 %26)
  store %struct.fib6_info* %27, %struct.fib6_info** %8, align 8
  %28 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %29 = call i64 @IS_ERR(%struct.fib6_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.fib6_info* %32)
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %21
  %35 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %36 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %35, i32 0, i32 5
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %39 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %38, i32 0, i32 6
  %40 = load %struct.fib6_info*, %struct.fib6_info** %39, align 8
  store %struct.fib6_info* %40, %struct.fib6_info** %9, align 8
  %41 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %42 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %43 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %42, i32 0, i32 6
  store %struct.fib6_info* %41, %struct.fib6_info** %43, align 8
  %44 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %45 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %44, i32 0, i32 5
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %48 = call i32 @fib6_info_release(%struct.fib6_info* %47)
  br label %49

49:                                               ; preds = %34, %14
  %50 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %51 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %58 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %57, i32 0, i32 4
  %59 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %60 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %63 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %66 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32 @addrconf_prefix_route(i32* %58, i32 %61, i32 %64, i32 %67, i32 0, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %56, %49
  %71 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %72 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @INET6_IFADDR_STATE_PREDAD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %78 = call i32 @addrconf_dad_start(%struct.inet6_ifaddr* %77)
  br label %79

79:                                               ; preds = %76, %70
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.fib6_info* @addrconf_f6i_alloc(%struct.net*, %struct.inet6_dev*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fib6_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fib6_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @addrconf_dad_start(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
