; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_minshall_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_minshall_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*, i32, %struct.sk_buff*)* @tcp_minshall_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_minshall_update(%struct.tcp_sock* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i32 @tcp_skb_pcount(%struct.sk_buff* %10)
  %12 = load i32, i32* %5, align 4
  %13 = mul i32 %11, %12
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
