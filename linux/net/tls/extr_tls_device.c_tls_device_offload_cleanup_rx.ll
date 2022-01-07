; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_offload_cleanup_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_offload_cleanup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i64, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.tls_context*, i32)* }

@device_offload_lock = common dso_local global i32 0, align 4
@TLS_OFFLOAD_CTX_DIR_RX = common dso_local global i32 0, align 4
@TLS_HW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_device_offload_cleanup_rx(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %5)
  store %struct.tls_context* %6, %struct.tls_context** %3, align 8
  %7 = call i32 @down_read(i32* @device_offload_lock)
  %8 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %9 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.net_device*, %struct.tls_context*, i32)*, i32 (%struct.net_device*, %struct.tls_context*, i32)** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %22 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_RX, align 4
  %23 = call i32 %19(%struct.net_device* %20, %struct.tls_context* %21, i32 %22)
  %24 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %25 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TLS_HW, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @dev_put(%struct.net_device* %30)
  %32 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %33 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %32, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %33, align 8
  br label %34

34:                                               ; preds = %29, %14
  br label %35

35:                                               ; preds = %34, %13
  %36 = call i32 @up_read(i32* @device_offload_lock)
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @tls_sw_release_resources_rx(%struct.sock* %37)
  ret void
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @tls_sw_release_resources_rx(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
