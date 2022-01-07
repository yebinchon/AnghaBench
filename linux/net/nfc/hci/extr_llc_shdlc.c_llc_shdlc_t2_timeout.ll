; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_t2_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_t2_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32 }
%struct.timer_list = type { i32 }

@t2_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SoftIRQ: need to retransmit\0A\00", align 1
@shdlc = common dso_local global %struct.llc_shdlc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @llc_shdlc_t2_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_t2_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.llc_shdlc*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %5 = ptrtoint %struct.llc_shdlc* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @t2_timer, align 4
  %8 = call %struct.llc_shdlc* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.llc_shdlc* %8, %struct.llc_shdlc** %3, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %11 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %10, i32 0, i32 0
  %12 = call i32 @schedule_work(i32* %11)
  ret void
}

declare dso_local %struct.llc_shdlc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
