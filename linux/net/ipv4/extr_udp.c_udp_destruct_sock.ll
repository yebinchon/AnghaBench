; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_destruct_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_destruct_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.udp_sock = type { i32 }
%struct.sk_buff = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_destruct_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.udp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.udp_sock* @udp_sk(%struct.sock* %6)
  store %struct.udp_sock* %7, %struct.udp_sock** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %11 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %10, i32 0, i32 0
  %12 = call i32 @skb_queue_splice_tail_init(i32* %9, i32* %11)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %14, i32 0, i32 0
  %16 = call %struct.sk_buff* @__skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @kfree_skb(%struct.sk_buff* %26)
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @udp_rmem_release(%struct.sock* %29, i32 %30, i32 0, i32 1)
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call i32 @inet_sock_destruct(%struct.sock* %32)
  ret void
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_splice_tail_init(i32*, i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @udp_rmem_release(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @inet_sock_destruct(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
