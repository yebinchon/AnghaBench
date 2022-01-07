; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_resync_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_resync_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i32, %struct.net_device*, %struct.TYPE_4__ }
%struct.net_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.net_device*, %struct.sock*, i32, i32*, i32)* }
%struct.TYPE_4__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@device_offload_lock = common dso_local global i32 0, align 4
@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@TLS_TX_SYNC_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tls_context*, i32)* @tls_device_resync_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_device_resync_tx(%struct.sock* %0, %struct.tls_context* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %21 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = call i32 @down_read(i32* @device_offload_lock)
  %25 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %26 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %25, i32 0, i32 1
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %7, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.net_device*, %struct.sock*, i32, i32*, i32)*, i32 (%struct.net_device*, %struct.sock*, i32, i32*, i32)** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %41 = call i32 %35(%struct.net_device* %36, %struct.sock* %37, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %30, %19
  %43 = call i32 @up_read(i32* @device_offload_lock)
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @TLS_TX_SYNC_SCHED, align 4
  %49 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %50 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %49, i32 0, i32 0
  %51 = call i32 @clear_bit_unlock(i32 %48, i32* %50)
  br label %52

52:                                               ; preds = %47, %46
  ret void
}

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
