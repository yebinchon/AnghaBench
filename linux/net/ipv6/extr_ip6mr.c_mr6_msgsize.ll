; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mr6_msgsize.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mr6_msgsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mr6_msgsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mr6_msgsize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i64 @NLMSG_ALIGN(i32 4)
  %7 = call i64 @nla_total_size(i32 4)
  %8 = add i64 %6, %7
  %9 = call i64 @nla_total_size(i32 4)
  %10 = add i64 %8, %9
  %11 = call i64 @nla_total_size(i32 4)
  %12 = add i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @nla_total_size(i32 4)
  %18 = add i64 %16, %17
  %19 = call i64 @nla_total_size(i32 0)
  %20 = add i64 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @NLA_ALIGN(i32 4)
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 %20, %24
  %26 = call i64 @nla_total_size_64bit(i32 4)
  %27 = add i64 %25, %26
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %15, %2
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  ret i32 %30
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local i64 @nla_total_size_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
