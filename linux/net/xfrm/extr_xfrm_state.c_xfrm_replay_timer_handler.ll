; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_replay_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_replay_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.xfrm_state*, i32)* }
%struct.TYPE_3__ = type { i64 }
%struct.timer_list = type { i32 }

@rtimer = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_REPLAY_TIMEOUT = common dso_local global i32 0, align 4
@XFRM_TIME_DEFER = common dso_local global i32 0, align 4
@x = common dso_local global %struct.xfrm_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xfrm_replay_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_replay_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %5 = ptrtoint %struct.xfrm_state* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @rtimer, align 4
  %8 = call %struct.xfrm_state* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.xfrm_state* %8, %struct.xfrm_state** %3, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XFRM_STATE_VALID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %20 = call i32 @xs_net(%struct.xfrm_state* %19)
  %21 = call i64 @xfrm_aevent_is_on(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.xfrm_state*, i32)*, i32 (%struct.xfrm_state*, i32)** %27, align 8
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %30 = load i32, i32* @XFRM_REPLAY_TIMEOUT, align 4
  %31 = call i32 %28(%struct.xfrm_state* %29, i32 %30)
  br label %38

32:                                               ; preds = %18
  %33 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %23
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  ret void
}

declare dso_local %struct.xfrm_state* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @xfrm_aevent_is_on(i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
