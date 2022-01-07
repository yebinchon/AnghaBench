; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_state_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_state_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i64, i64 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_offload*, i32, %struct.sk_buff*, i32)* @nf_flow_state_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_state_check(%struct.flow_offload* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_offload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcphdr*, align 8
  store %struct.flow_offload* %0, %struct.flow_offload** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IPPROTO_TCP, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

15:                                               ; preds = %4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 %18, 16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call i64 @skb_network_header(%struct.sk_buff* %25)
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.tcphdr*
  store %struct.tcphdr* %31, %struct.tcphdr** %10, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %24
  %42 = phi i1 [ true, %24 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.flow_offload*, %struct.flow_offload** %6, align 8
  %48 = call i32 @flow_offload_teardown(%struct.flow_offload* %47)
  store i32 -1, i32* %5, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %46, %23, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @flow_offload_teardown(%struct.flow_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
