; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"result=%d\0A\00", align 1
@SHDLC_HALF_CONNECTED = common dso_local global i32 0, align 4
@SHDLC_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*, i32)* @llc_shdlc_connect_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_connect_complete(%struct.llc_shdlc* %0, i32 %1) #0 {
  %3 = alloca %struct.llc_shdlc*, align 8
  %4 = alloca i32, align 4
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %8 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %7, i32 0, i32 6
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %14 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %16 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %18 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @SHDLC_HALF_CONNECTED, align 4
  %20 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %21 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @SHDLC_DISCONNECTED, align 4
  %24 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %25 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %12
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %29 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %31 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wake_up(i32 %32)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @wake_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
