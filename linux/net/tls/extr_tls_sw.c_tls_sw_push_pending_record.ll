; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_push_pending_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_push_pending_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_tx = type { %struct.tls_rec* }
%struct.tls_rec = type { %struct.sk_msg }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TLS_RECORD_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tls_sw_push_pending_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_sw_push_pending_record(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tls_context*, align 8
  %7 = alloca %struct.tls_sw_context_tx*, align 8
  %8 = alloca %struct.tls_rec*, align 8
  %9 = alloca %struct.sk_msg*, align 8
  %10 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %11)
  store %struct.tls_context* %12, %struct.tls_context** %6, align 8
  %13 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %14 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %13)
  store %struct.tls_sw_context_tx* %14, %struct.tls_sw_context_tx** %7, align 8
  %15 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %7, align 8
  %16 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %15, i32 0, i32 0
  %17 = load %struct.tls_rec*, %struct.tls_rec** %16, align 8
  store %struct.tls_rec* %17, %struct.tls_rec** %8, align 8
  %18 = load %struct.tls_rec*, %struct.tls_rec** %8, align 8
  %19 = icmp ne %struct.tls_rec* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.tls_rec*, %struct.tls_rec** %8, align 8
  %23 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %22, i32 0, i32 0
  store %struct.sk_msg* %23, %struct.sk_msg** %9, align 8
  %24 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %25 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load i32, i32* @TLS_RECORD_TYPE_DATA, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @bpf_exec_tx_verdict(%struct.sk_msg* %32, %struct.sock* %33, i32 1, i32 %34, i64* %10, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %30, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @bpf_exec_tx_verdict(%struct.sk_msg*, %struct.sock*, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
