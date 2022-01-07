; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_send_dupack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_send_dupack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@LINUX_MIB_DELAYEDACKLOST = common dso_local global i32 0, align 4
@TCP_MAX_QUICKACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_send_dupack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_send_dupack(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @before(i64 %22, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %18
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call %struct.TYPE_6__* @sock_net(%struct.sock* %29)
  %31 = load i32, i32* @LINUX_MIB_DELAYEDACKLOST, align 4
  %32 = call i32 @NET_INC_STATS(%struct.TYPE_6__* %30, i32 %31)
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = load i32, i32* @TCP_MAX_QUICKACKS, align 4
  %35 = call i32 @tcp_enter_quickack_mode(%struct.sock* %33, i32 %34)
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %37 = call i64 @tcp_is_sack(%struct.tcp_sock* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %28
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call %struct.TYPE_6__* @sock_net(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %6, align 8
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @tcp_rcv_spurious_retrans(%struct.sock* %51, %struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @after(i64 %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %63, %46
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @tcp_dsack_set(%struct.sock* %68, i64 %72, i64 %73)
  br label %75

75:                                               ; preds = %67, %39, %28
  br label %76

76:                                               ; preds = %75, %18, %2
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = call i32 @tcp_send_ack(%struct.sock* %77)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @NET_INC_STATS(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_6__* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_enter_quickack_mode(%struct.sock*, i32) #1

declare dso_local i64 @tcp_is_sack(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_rcv_spurious_retrans(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @tcp_dsack_set(%struct.sock*, i64, i64) #1

declare dso_local i32 @tcp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
