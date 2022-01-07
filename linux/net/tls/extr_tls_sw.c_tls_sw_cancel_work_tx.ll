; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_cancel_work_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_cancel_work_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }
%struct.tls_sw_context_tx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BIT_TX_CLOSING = common dso_local global i32 0, align 4
@BIT_TX_SCHEDULED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_sw_cancel_work_tx(%struct.tls_context* %0) #0 {
  %2 = alloca %struct.tls_context*, align 8
  %3 = alloca %struct.tls_sw_context_tx*, align 8
  store %struct.tls_context* %0, %struct.tls_context** %2, align 8
  %4 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  %5 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %4)
  store %struct.tls_sw_context_tx* %5, %struct.tls_sw_context_tx** %3, align 8
  %6 = load i32, i32* @BIT_TX_CLOSING, align 4
  %7 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %3, align 8
  %8 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %7, i32 0, i32 1
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load i32, i32* @BIT_TX_SCHEDULED, align 4
  %11 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %3, align 8
  %12 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %11, i32 0, i32 1
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %3, align 8
  %15 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  ret void
}

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
