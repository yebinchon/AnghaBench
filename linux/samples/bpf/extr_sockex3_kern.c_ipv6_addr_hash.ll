; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_sockex3_kern.c_ipv6_addr_hash.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_sockex3_kern.c_ipv6_addr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__sk_buff*, i32)* @ipv6_addr_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_addr_hash(%struct.__sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @load_word(%struct.__sk_buff* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 4
  %15 = call i32 @load_word(%struct.__sk_buff* %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 8
  %19 = call i32 @load_word(%struct.__sk_buff* %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 12
  %23 = call i32 @load_word(%struct.__sk_buff* %20, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = xor i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %28, %29
  ret i32 %30
}

declare dso_local i32 @load_word(%struct.__sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
