; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_t4timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_t4timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nr_sock = type { %struct.sock }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }
%struct.TYPE_2__ = type { i32 }

@t4timer = common dso_local global i32 0, align 4
@NR_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@nr = common dso_local global %struct.nr_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @nr_t4timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_t4timer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.nr_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %6 = ptrtoint %struct.nr_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @t4timer, align 4
  %9 = call %struct.nr_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.nr_sock* %9, %struct.nr_sock** %3, align 8
  %10 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %11 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %10, i32 0, i32 0
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load i32, i32* @NR_COND_PEER_RX_BUSY, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.TYPE_2__* @nr_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call i32 @bh_unlock_sock(%struct.sock* %21)
  ret void
}

declare dso_local %struct.nr_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @nr_sk(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
