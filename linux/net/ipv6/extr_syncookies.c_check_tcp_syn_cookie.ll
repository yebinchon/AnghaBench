; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c_check_tcp_syn_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c_check_tcp_syn_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@COOKIEBITS = common dso_local global i32 0, align 4
@MAX_SYNCOOKIE_AGE = common dso_local global i32 0, align 4
@COOKIEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.in6_addr*, %struct.in6_addr*, i32, i32, i32)* @check_tcp_syn_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tcp_syn_cookie(i32 %0, %struct.in6_addr* %1, %struct.in6_addr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.in6_addr* %1, %struct.in6_addr** %9, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = call i32 (...) @tcp_cookie_time()
  store i32 %16, i32* %15, align 4
  %17 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %18 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @cookie_hash(%struct.in6_addr* %17, %struct.in6_addr* %18, i32 %19, i32 %20, i32 0, i32 0)
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @COOKIEBITS, align 4
  %29 = ashr i32 %27, %28
  %30 = sub nsw i32 %26, %29
  %31 = load i32, i32* @COOKIEBITS, align 4
  %32 = ashr i32 -1, %31
  %33 = and i32 %30, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @MAX_SYNCOOKIE_AGE, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %51

38:                                               ; preds = %6
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %41 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @cookie_hash(%struct.in6_addr* %40, %struct.in6_addr* %41, i32 %42, i32 %43, i32 %46, i32 1)
  %48 = sub nsw i32 %39, %47
  %49 = load i32, i32* @COOKIEMASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %38, %37
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @tcp_cookie_time(...) #1

declare dso_local i32 @cookie_hash(%struct.in6_addr*, %struct.in6_addr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
