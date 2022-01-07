; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @l2tp_ip_destroy_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_ip_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.l2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 1
  %7 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  store %struct.l2tp_tunnel* %7, %struct.l2tp_tunnel** %4, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = call %struct.sk_buff* @__skb_dequeue_tail(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @kfree_skb(%struct.sk_buff* %14)
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %18 = icmp ne %struct.l2tp_tunnel* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %21 = call i32 @l2tp_tunnel_delete(%struct.l2tp_tunnel* %20)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue_tail(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @l2tp_tunnel_delete(%struct.l2tp_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
