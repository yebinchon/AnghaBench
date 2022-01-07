; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_skip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_options = type { i32 }
%struct.TYPE_2__ = type { %struct.ip_options }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @nft_flow_offload_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_flow_offload_skip(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_options*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i64 @skb_sec_path(%struct.sk_buff* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NFPROTO_IPV4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ip_options* %18, %struct.ip_options** %6, align 8
  %19 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %20 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %27

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %11
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @skb_sec_path(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
