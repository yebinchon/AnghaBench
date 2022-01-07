; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_rfc3315_s14_backoff_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_rfc3315_s14_backoff_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @rfc3315_s14_backoff_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rfc3315_s14_backoff_update(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (...) @prandom_u32()
  %7 = srem i32 %6, 200001
  %8 = add nsw i32 1900000, %7
  %9 = load i64, i64* %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = mul nsw i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @do_div(i32 %12, i32 1000000)
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = call i32 (...) @prandom_u32()
  %20 = srem i32 %19, 200001
  %21 = add nsw i32 900000, %20
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %21, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @do_div(i32 %25, i32 1000000)
  br label %27

27:                                               ; preds = %18, %2
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  ret i64 %29
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
