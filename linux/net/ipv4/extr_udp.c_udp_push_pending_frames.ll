; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_push_pending_frames.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_push_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.udp_sock = type { i64, i64 }
%struct.inet_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_push_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.udp_sock*, align 8
  %4 = alloca %struct.inet_sock*, align 8
  %5 = alloca %struct.flowi4*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.udp_sock* @udp_sk(%struct.sock* %8)
  store %struct.udp_sock* %9, %struct.udp_sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %4, align 8
  %12 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %13 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.flowi4* %16, %struct.flowi4** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %19 = call %struct.sk_buff* @ip_finish_skb(%struct.sock* %17, %struct.flowi4* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %30

23:                                               ; preds = %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %26 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %27 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @udp_send_skb(%struct.sk_buff* %24, %struct.flowi4* %25, i32* %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %22
  %31 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %32 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %34 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @ip_finish_skb(%struct.sock*, %struct.flowi4*) #1

declare dso_local i32 @udp_send_skb(%struct.sk_buff*, %struct.flowi4*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
