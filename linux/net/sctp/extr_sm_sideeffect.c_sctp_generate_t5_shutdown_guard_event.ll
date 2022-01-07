; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_generate_t5_shutdown_guard_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_generate_t5_shutdown_guard_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.timer_list = type { i32 }

@timers = common dso_local global i32* null, align 8
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i64 0, align 8
@asoc = common dso_local global %struct.sctp_association* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sctp_generate_t5_shutdown_guard_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_generate_t5_shutdown_guard_event(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %5 = ptrtoint %struct.sctp_association* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32*, i32** @timers, align 8
  %8 = load i64, i64* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sctp_association* @from_timer(i32 %5, %struct.timer_list* %6, i32 %10)
  store %struct.sctp_association* %11, %struct.sctp_association** %3, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = load i64, i64* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 8
  %14 = call i32 @sctp_generate_timeout_event(%struct.sctp_association* %12, i64 %13)
  ret void
}

declare dso_local %struct.sctp_association* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @sctp_generate_timeout_event(%struct.sctp_association*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
