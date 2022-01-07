; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_skb_consume_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_skb_consume_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_consume_udp(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @READ_ONCE(i32 %10)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock_fast(%struct.sock* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sk_peek_offset_bwd(%struct.sock* %19, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @unlock_sock_fast(%struct.sock* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @skb_unref(%struct.sk_buff* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %41

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @udp_skb_has_head_state(%struct.sk_buff* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @skb_release_head_state(%struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @__consume_stateless_skb(%struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %38, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @lock_sock_fast(%struct.sock*) #1

declare dso_local i32 @sk_peek_offset_bwd(%struct.sock*, i32) #1

declare dso_local i32 @unlock_sock_fast(%struct.sock*, i32) #1

declare dso_local i32 @skb_unref(%struct.sk_buff*) #1

declare dso_local i32 @udp_skb_has_head_state(%struct.sk_buff*) #1

declare dso_local i32 @skb_release_head_state(%struct.sk_buff*) #1

declare dso_local i32 @__consume_stateless_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
