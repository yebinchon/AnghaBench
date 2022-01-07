; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_v4_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %4)
  store %struct.tcp_sock* %5, %struct.tcp_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @trace_tcp_destroy_sock(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @tcp_clear_xmit_timers(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @tcp_cleanup_congestion_control(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @tcp_cleanup_ulp(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @tcp_write_queue_purge(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @tcp_fastopen_active_disable_ofo_check(%struct.sock* %16)
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 2
  %20 = call i32 @skb_rbtree_purge(i32* %19)
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @inet_put_port(%struct.sock* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @rcu_access_pointer(i32 %32)
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = call i32 @tcp_free_fastopen_req(%struct.tcp_sock* %35)
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @tcp_fastopen_destroy_cipher(%struct.sock* %37)
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %40 = call i32 @tcp_saved_syn_free(%struct.tcp_sock* %39)
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = call i32 @sk_sockets_allocated_dec(%struct.sock* %41)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @trace_tcp_destroy_sock(%struct.sock*) #1

declare dso_local i32 @tcp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @tcp_cleanup_congestion_control(%struct.sock*) #1

declare dso_local i32 @tcp_cleanup_ulp(%struct.sock*) #1

declare dso_local i32 @tcp_write_queue_purge(%struct.sock*) #1

declare dso_local i32 @tcp_fastopen_active_disable_ofo_check(%struct.sock*) #1

declare dso_local i32 @skb_rbtree_purge(i32*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_put_port(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @tcp_free_fastopen_req(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_fastopen_destroy_cipher(%struct.sock*) #1

declare dso_local i32 @tcp_saved_syn_free(%struct.tcp_sock*) #1

declare dso_local i32 @sk_sockets_allocated_dec(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
