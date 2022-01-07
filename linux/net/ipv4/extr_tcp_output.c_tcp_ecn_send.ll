; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_ecn_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_ecn_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TCP_ECN_OK = common dso_local global i32 0, align 4
@TCP_ECN_QUEUE_CWR = common dso_local global i32 0, align 4
@SKB_GSO_TCP_ECN = common dso_local global i32 0, align 4
@TCP_ECN_DEMAND_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32)* @tcp_ecn_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ecn_send(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %9, align 8
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TCP_ECN_OK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @before(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %24
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @INET_ECN_xmit(%struct.sock* %35)
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TCP_ECN_QUEUE_CWR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = load i32, i32* @TCP_ECN_QUEUE_CWR, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %51 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @SKB_GSO_TCP_ECN, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %43, %34
  br label %67

59:                                               ; preds = %24, %18
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = call i32 @tcp_ca_needs_ecn(%struct.sock* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = call i32 @INET_ECN_dontxmit(%struct.sock* %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %58
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TCP_ECN_DEMAND_CWR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %67
  br label %78

78:                                               ; preds = %77, %4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @INET_ECN_xmit(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @tcp_ca_needs_ecn(%struct.sock*) #1

declare dso_local i32 @INET_ECN_dontxmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
