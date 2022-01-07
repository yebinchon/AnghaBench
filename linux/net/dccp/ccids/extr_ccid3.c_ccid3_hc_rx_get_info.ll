; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TCPI_OPT_TIMESTAMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tcp_info*)* @ccid3_hc_rx_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_rx_get_info(%struct.sock* %0, %struct.tcp_info* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_info*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tcp_info* %1, %struct.tcp_info** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.TYPE_2__* @ccid3_hc_rx_sk(%struct.sock* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @TCPI_OPT_TIMESTAMPS, align 4
  %12 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_2__* @ccid3_hc_rx_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %21 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @ccid3_hc_rx_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
