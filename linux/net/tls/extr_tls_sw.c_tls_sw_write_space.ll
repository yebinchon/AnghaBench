; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_tx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BIT_TX_SCHEDULED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_sw_write_space(%struct.sock* %0, %struct.tls_context* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca %struct.tls_sw_context_tx*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tls_context* %1, %struct.tls_context** %4, align 8
  %6 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %7 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %6)
  store %struct.tls_sw_context_tx* %7, %struct.tls_sw_context_tx** %5, align 8
  %8 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %5, align 8
  %9 = call i64 @is_tx_ready(%struct.tls_sw_context_tx* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @BIT_TX_SCHEDULED, align 4
  %13 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %5, align 8
  %14 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %13, i32 0, i32 1
  %15 = call i32 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %5, align 8
  %19 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @schedule_delayed_work(i32* %20, i32 0)
  br label %22

22:                                               ; preds = %17, %11, %2
  ret void
}

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

declare dso_local i64 @is_tx_ready(%struct.tls_sw_context_tx*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
