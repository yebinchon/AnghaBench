; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_subscription = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tipc_subscr }
%struct.tipc_subscr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@TIPC_SUBSCR_TIMEOUT = common dso_local global i32 0, align 4
@sub = common dso_local global %struct.tipc_subscription* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tipc_sub_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sub_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tipc_subscription*, align 8
  %4 = alloca %struct.tipc_subscr*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.tipc_subscription*, %struct.tipc_subscription** %3, align 8
  %6 = ptrtoint %struct.tipc_subscription* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.tipc_subscription* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.tipc_subscription* %9, %struct.tipc_subscription** %3, align 8
  %10 = load %struct.tipc_subscription*, %struct.tipc_subscription** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.tipc_subscr* %12, %struct.tipc_subscr** %4, align 8
  %13 = load %struct.tipc_subscription*, %struct.tipc_subscription** %3, align 8
  %14 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.tipc_subscription*, %struct.tipc_subscription** %3, align 8
  %17 = load %struct.tipc_subscr*, %struct.tipc_subscr** %4, align 8
  %18 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tipc_subscr*, %struct.tipc_subscr** %4, align 8
  %22 = getelementptr inbounds %struct.tipc_subscr, %struct.tipc_subscr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TIPC_SUBSCR_TIMEOUT, align 4
  %26 = call i32 @tipc_sub_send_event(%struct.tipc_subscription* %16, i32 %20, i32 %24, i32 %25, i32 0, i32 0)
  %27 = load %struct.tipc_subscription*, %struct.tipc_subscription** %3, align 8
  %28 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.tipc_subscription*, %struct.tipc_subscription** %3, align 8
  %30 = getelementptr inbounds %struct.tipc_subscription, %struct.tipc_subscription* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local %struct.tipc_subscription* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tipc_sub_send_event(%struct.tipc_subscription*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
