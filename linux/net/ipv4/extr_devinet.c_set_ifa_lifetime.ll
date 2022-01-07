; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_set_ifa_lifetime.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_set_ifa_lifetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i32, i64, i64, i64, i64 }

@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_ifaddr*, i32, i32)* @set_ifa_lifetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ifa_lifetime(%struct.in_ifaddr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.in_ifaddr* %0, %struct.in_ifaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @IFA_F_PERMANENT, align 4
  %9 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %13 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HZ, align 4
  %18 = call i64 @addrconf_timeout_fixup(i32 %16, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @addrconf_finite_timeout(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %25 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @IFA_F_PERMANENT, align 4
  %28 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %29 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = call i64 @addrconf_timeout_fixup(i32 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @addrconf_finite_timeout(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %44 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %45 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %51 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %32
  %53 = load i64, i64* @jiffies, align 8
  %54 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %55 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %57 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %62 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %65 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %52
  ret void
}

declare dso_local i64 @addrconf_timeout_fixup(i32, i32) #1

declare dso_local i64 @addrconf_finite_timeout(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
