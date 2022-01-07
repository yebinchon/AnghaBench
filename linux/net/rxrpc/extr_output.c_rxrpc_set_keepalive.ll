; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_output.c_rxrpc_set_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_output.c_rxrpc_set_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@rxrpc_timer_set_for_keepalive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_set_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_set_keepalive(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sdiv i32 %8, 6
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %4, align 8
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @WRITE_ONCE(i32 %16, i64 %17)
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @rxrpc_timer_set_for_keepalive, align 4
  %23 = call i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call* %19, i64 %20, i64 %21, i32 %22)
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
