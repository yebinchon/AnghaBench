; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_trace_fill_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_trace_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.sk_buff*, i32, i32)* @trace_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_fill_header(%struct.sk_buff* %0, i32 %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %33

16:                                               ; preds = %5
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %17, i32 %18, i32 %19)
  store %struct.nlattr* %20, %struct.nlattr** %12, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %27 = call i32 @nla_data(%struct.nlattr* %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @skb_copy_bits(%struct.sk_buff* %24, i32 %25, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %16
  store i32 -1, i32* %6, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %31, %15
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
