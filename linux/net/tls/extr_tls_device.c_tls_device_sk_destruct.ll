; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_sk_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_sk_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i64, i32, i32 (%struct.sock.0*)* }
%struct.sock.0 = type opaque
%struct.tls_offload_context_tx = type { i32, i64 }

@TLS_HW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tls_device_sk_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_device_sk_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca %struct.tls_offload_context_tx*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %5)
  store %struct.tls_context* %6, %struct.tls_context** %3, align 8
  %7 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %8 = call %struct.tls_offload_context_tx* @tls_offload_ctx_tx(%struct.tls_context* %7)
  store %struct.tls_offload_context_tx* %8, %struct.tls_offload_context_tx** %4, align 8
  %9 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %10 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %9, i32 0, i32 2
  %11 = load i32 (%struct.sock.0*)*, i32 (%struct.sock.0*)** %10, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = bitcast %struct.sock* %12 to %struct.sock.0*
  %14 = call i32 %11(%struct.sock.0* %13)
  %15 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %16 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TLS_HW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %4, align 8
  %22 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %4, align 8
  %27 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @destroy_record(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %4, align 8
  %32 = call i32 @delete_all_records(%struct.tls_offload_context_tx* %31)
  %33 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %4, align 8
  %34 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @crypto_free_aead(i32 %35)
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @inet_csk(%struct.sock* %37)
  %39 = call i32 @clean_acked_data_disable(i32 %38)
  br label %40

40:                                               ; preds = %30, %1
  %41 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %42 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %41, i32 0, i32 1
  %43 = call i64 @refcount_dec_and_test(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %47 = call i32 @tls_device_queue_ctx_destruction(%struct.tls_context* %46)
  br label %48

48:                                               ; preds = %45, %40
  ret void
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_offload_context_tx* @tls_offload_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @destroy_record(i64) #1

declare dso_local i32 @delete_all_records(%struct.tls_offload_context_tx*) #1

declare dso_local i32 @crypto_free_aead(i32) #1

declare dso_local i32 @clean_acked_data_disable(i32) #1

declare dso_local i32 @inet_csk(%struct.sock*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @tls_device_queue_ctx_destruction(%struct.tls_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
