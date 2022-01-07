; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_iprange.c_iprange_ipv6_lt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_iprange.c_iprange_ipv6_lt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_addr*, %struct.in6_addr*)* @iprange_ipv6_lt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iprange_ipv6_lt(%struct.in6_addr* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  %11 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %12 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %19 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %17, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %10
  %27 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %28 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ntohl(i64 %33)
  %35 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %36 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ntohl(i64 %41)
  %43 = icmp slt i64 %34, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %10
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %7

49:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
