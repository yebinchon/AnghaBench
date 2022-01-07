; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_stream_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_rx = type { i32, i64 }
%struct.sk_psock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_sw_stream_read(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca %struct.tls_sw_context_rx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_psock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %7)
  store %struct.tls_context* %8, %struct.tls_context** %3, align 8
  %9 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %10 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %9)
  store %struct.tls_sw_context_rx* %10, %struct.tls_sw_context_rx** %4, align 8
  store i32 1, i32* %5, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.sk_psock* @sk_psock(%struct.sock* %12)
  store %struct.sk_psock* %13, %struct.sk_psock** %6, align 8
  %14 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %15 = icmp ne %struct.sk_psock* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %18 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %17, i32 0, i32 0
  %19 = call i32 @list_empty(i32* %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %26 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %31 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %30, i32 0, i32 0
  %32 = call i32 @skb_queue_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24, %20
  %36 = phi i1 [ true, %24 ], [ true, %20 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_psock* @sk_psock(%struct.sock*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
