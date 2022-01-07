; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32, i32, i64, i32*, i32 }

@connect_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SHDLC_CONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_shdlc*)* @llc_shdlc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_shdlc_connect(%struct.llc_shdlc* %0) #0 {
  %2 = alloca %struct.llc_shdlc*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %2, align 8
  %3 = load i32, i32* @connect_wq, align 4
  %4 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %3)
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %7 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* @SHDLC_CONNECTING, align 4
  %10 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %11 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %13 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %12, i32 0, i32 4
  store i32* @connect_wq, i32** %13, align 8
  %14 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %15 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %17 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %19 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %18, i32 0, i32 2
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %22 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %21, i32 0, i32 1
  %23 = call i32 @schedule_work(i32* %22)
  %24 = load i32, i32* @connect_wq, align 4
  %25 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %26 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @wait_event(i32 %24, i32 %29)
  %31 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %32 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  ret i32 %33
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
