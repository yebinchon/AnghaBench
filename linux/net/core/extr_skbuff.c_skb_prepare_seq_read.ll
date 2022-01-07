; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_prepare_seq_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_prepare_seq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_seq_state = type { i32, i32, i32*, i64, i64, %struct.sk_buff*, %struct.sk_buff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_prepare_seq_read(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.skb_seq_state* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skb_seq_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.skb_seq_state* %3, %struct.skb_seq_state** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.skb_seq_state*, %struct.skb_seq_state** %8, align 8
  %11 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.skb_seq_state*, %struct.skb_seq_state** %8, align 8
  %14 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load %struct.skb_seq_state*, %struct.skb_seq_state** %8, align 8
  %17 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %16, i32 0, i32 5
  store %struct.sk_buff* %15, %struct.sk_buff** %17, align 8
  %18 = load %struct.skb_seq_state*, %struct.skb_seq_state** %8, align 8
  %19 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %18, i32 0, i32 6
  store %struct.sk_buff* %15, %struct.sk_buff** %19, align 8
  %20 = load %struct.skb_seq_state*, %struct.skb_seq_state** %8, align 8
  %21 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.skb_seq_state*, %struct.skb_seq_state** %8, align 8
  %23 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.skb_seq_state*, %struct.skb_seq_state** %8, align 8
  %25 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
