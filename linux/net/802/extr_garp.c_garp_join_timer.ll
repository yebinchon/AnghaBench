; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_join_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_join_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garp_applicant = type { i32 }
%struct.timer_list = type { i32 }

@join_timer = common dso_local global i32 0, align 4
@GARP_EVENT_TRANSMIT_PDU = common dso_local global i32 0, align 4
@app = common dso_local global %struct.garp_applicant* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @garp_join_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garp_join_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.garp_applicant*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.garp_applicant*, %struct.garp_applicant** %3, align 8
  %5 = ptrtoint %struct.garp_applicant* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @join_timer, align 4
  %8 = call %struct.garp_applicant* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.garp_applicant* %8, %struct.garp_applicant** %3, align 8
  %9 = load %struct.garp_applicant*, %struct.garp_applicant** %3, align 8
  %10 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.garp_applicant*, %struct.garp_applicant** %3, align 8
  %13 = load i32, i32* @GARP_EVENT_TRANSMIT_PDU, align 4
  %14 = call i32 @garp_gid_event(%struct.garp_applicant* %12, i32 %13)
  %15 = load %struct.garp_applicant*, %struct.garp_applicant** %3, align 8
  %16 = call i32 @garp_pdu_queue(%struct.garp_applicant* %15)
  %17 = load %struct.garp_applicant*, %struct.garp_applicant** %3, align 8
  %18 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.garp_applicant*, %struct.garp_applicant** %3, align 8
  %21 = call i32 @garp_queue_xmit(%struct.garp_applicant* %20)
  %22 = load %struct.garp_applicant*, %struct.garp_applicant** %3, align 8
  %23 = call i32 @garp_join_timer_arm(%struct.garp_applicant* %22)
  ret void
}

declare dso_local %struct.garp_applicant* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @garp_gid_event(%struct.garp_applicant*, i32) #1

declare dso_local i32 @garp_pdu_queue(%struct.garp_applicant*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @garp_queue_xmit(%struct.garp_applicant*) #1

declare dso_local i32 @garp_join_timer_arm(%struct.garp_applicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
