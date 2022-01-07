; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_rx = type { i32, i32 (i32)*, %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strparser*, %struct.sk_buff*)* @tls_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_queue(%struct.strparser* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.strparser*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca %struct.tls_sw_context_rx*, align 8
  store %struct.strparser* %0, %struct.strparser** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.strparser*, %struct.strparser** %3, align 8
  %8 = getelementptr inbounds %struct.strparser, %struct.strparser* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.tls_context* @tls_get_ctx(i32 %9)
  store %struct.tls_context* %10, %struct.tls_context** %5, align 8
  %11 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %12 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %11)
  store %struct.tls_sw_context_rx* %12, %struct.tls_sw_context_rx** %6, align 8
  %13 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %6, align 8
  %14 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %6, align 8
  %17 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %16, i32 0, i32 2
  store %struct.sk_buff* %15, %struct.sk_buff** %17, align 8
  %18 = load %struct.strparser*, %struct.strparser** %3, align 8
  %19 = call i32 @strp_pause(%struct.strparser* %18)
  %20 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %6, align 8
  %21 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %20, i32 0, i32 1
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.strparser*, %struct.strparser** %3, align 8
  %24 = getelementptr inbounds %struct.strparser, %struct.strparser* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %22(i32 %25)
  ret void
}

declare dso_local %struct.tls_context* @tls_get_ctx(i32) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @strp_pause(%struct.strparser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
