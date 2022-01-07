; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_skb_min_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_skb_min_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*)* @__bpf_skb_min_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bpf_skb_min_len(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call i64 @skb_network_offset(%struct.sk_buff* %4)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call i64 @skb_transport_header_was_set(%struct.sk_buff* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i64 @skb_transport_offset(%struct.sk_buff* %10)
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = call i64 @skb_checksum_start_offset(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = add i64 %24, 4
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %18, %12
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header_was_set(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_start_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
