; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_init_xmit_timers.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_init_xmit_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@tcp_write_timer = common dso_local global i32 0, align 4
@tcp_delack_timer = common dso_local global i32 0, align 4
@tcp_keepalive_timer = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS_PINNED_SOFT = common dso_local global i32 0, align 4
@tcp_pace_kick = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED_SOFT = common dso_local global i32 0, align 4
@tcp_compressed_ack_kick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_init_xmit_timers(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = call i32 @inet_csk_init_xmit_timers(%struct.sock* %3, i32* @tcp_write_timer, i32* @tcp_delack_timer, i32* @tcp_keepalive_timer)
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %9 = load i32, i32* @HRTIMER_MODE_ABS_PINNED_SOFT, align 4
  %10 = call i32 @hrtimer_init(%struct.TYPE_4__* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @tcp_pace_kick, align 4
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %20 = load i32, i32* @HRTIMER_MODE_REL_PINNED_SOFT, align 4
  %21 = call i32 @hrtimer_init(%struct.TYPE_4__* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @tcp_compressed_ack_kick, align 4
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  ret void
}

declare dso_local i32 @inet_csk_init_xmit_timers(%struct.sock*, i32*, i32*, i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
