; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_write_queue_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_write_queue_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@TCP_CHRONO_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_write_queue_purge(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = load i32, i32* @TCP_CHRONO_BUSY, align 4
  %6 = call i32 @tcp_chrono_stop(%struct.sock* %4, i32 %5)
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 1
  %10 = call %struct.sk_buff* @__skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %3, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @tcp_skb_tsorted_anchor_cleanup(%struct.sk_buff* %13)
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @sk_wmem_free_skb(%struct.sock* %15, %struct.sk_buff* %16)
  br label %7

18:                                               ; preds = %7
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @tcp_rtx_queue_purge(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @__kfree_skb(%struct.sk_buff* %27)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %30, align 8
  br label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call %struct.TYPE_4__* @tcp_sk(%struct.sock* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = call i32 @sk_mem_reclaim(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = call %struct.TYPE_4__* @tcp_sk(%struct.sock* %38)
  %40 = call i32 @tcp_clear_all_retrans_hints(%struct.TYPE_4__* %39)
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = call %struct.TYPE_4__* @tcp_sk(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = call %struct.TYPE_5__* @inet_csk(%struct.sock* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  ret void
}

declare dso_local i32 @tcp_chrono_stop(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @tcp_skb_tsorted_anchor_cleanup(%struct.sk_buff*) #1

declare dso_local i32 @sk_wmem_free_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_rtx_queue_purge(%struct.sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @tcp_clear_all_retrans_hints(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
