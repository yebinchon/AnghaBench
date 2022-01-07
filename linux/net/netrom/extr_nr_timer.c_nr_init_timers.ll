; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_init_timers.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_timer.c_nr_init_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nr_sock = type { i32, i32, i32, i32 }

@nr_t1timer_expiry = common dso_local global i32 0, align 4
@nr_t2timer_expiry = common dso_local global i32 0, align 4
@nr_t4timer_expiry = common dso_local global i32 0, align 4
@nr_idletimer_expiry = common dso_local global i32 0, align 4
@nr_heartbeat_expiry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_init_timers(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.nr_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.nr_sock* @nr_sk(%struct.sock* %4)
  store %struct.nr_sock* %5, %struct.nr_sock** %3, align 8
  %6 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %7 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %6, i32 0, i32 3
  %8 = load i32, i32* @nr_t1timer_expiry, align 4
  %9 = call i32 @timer_setup(i32* %7, i32 %8, i32 0)
  %10 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %11 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %10, i32 0, i32 2
  %12 = load i32, i32* @nr_t2timer_expiry, align 4
  %13 = call i32 @timer_setup(i32* %11, i32 %12, i32 0)
  %14 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %15 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %14, i32 0, i32 1
  %16 = load i32, i32* @nr_t4timer_expiry, align 4
  %17 = call i32 @timer_setup(i32* %15, i32 %16, i32 0)
  %18 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %19 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %18, i32 0, i32 0
  %20 = load i32, i32* @nr_idletimer_expiry, align 4
  %21 = call i32 @timer_setup(i32* %19, i32 %20, i32 0)
  %22 = load i32, i32* @nr_heartbeat_expiry, align 4
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
