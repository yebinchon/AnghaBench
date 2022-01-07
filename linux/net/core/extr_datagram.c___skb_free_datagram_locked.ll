; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_free_datagram_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_free_datagram_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__skb_free_datagram_locked(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @skb_unref(%struct.sk_buff* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @sk_peek_offset_bwd(%struct.sock* %12, i32 %13)
  br label %30

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @lock_sock_fast(%struct.sock* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sk_peek_offset_bwd(%struct.sock* %18, i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @skb_orphan(%struct.sk_buff* %21)
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 @sk_mem_reclaim_partial(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @unlock_sock_fast(%struct.sock* %25, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @__kfree_skb(%struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @skb_unref(%struct.sk_buff*) #1

declare dso_local i32 @sk_peek_offset_bwd(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock_fast(%struct.sock*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @sk_mem_reclaim_partial(%struct.sock*) #1

declare dso_local i32 @unlock_sock_fast(%struct.sock*, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
