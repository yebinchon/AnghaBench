; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_kick.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, i64, %struct.inet6_dev* }
%struct.inet6_dev = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*)* @addrconf_dad_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_kick(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  %6 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %7 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %6, i32 0, i32 3
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  store %struct.inet6_dev* %8, %struct.inet6_dev** %4, align 8
  %9 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %10 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %29

16:                                               ; preds = %1
  %17 = call i32 (...) @prandom_u32()
  %18 = sext i32 %17 to i64
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi i64 [ %22, %24 ], [ 1, %25 ]
  %28 = srem i64 %18, %27
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %26, %15
  store i64 0, i64* %5, align 8
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %31 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %37 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_8__* @dev_net(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %35, %29
  br label %47

47:                                               ; preds = %49, %46
  %48 = call i32 @get_random_bytes(i64* %5, i32 6)
  br label %49

49:                                               ; preds = %47
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %47, label %52

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %56 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %58 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %62 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @addrconf_mod_dad_work(%struct.inet6_ifaddr* %63, i64 %64)
  ret void
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local %struct.TYPE_8__* @dev_net(i32) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

declare dso_local i32 @addrconf_mod_dad_work(%struct.inet6_ifaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
