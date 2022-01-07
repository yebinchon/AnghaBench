; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_ua.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32 }
%struct.rfcomm_dlc = type { i32, i32, i32 (%struct.rfcomm_dlc*, i32)* }

@.str = private unnamed_addr constant [29 x i8] c"session %p state %ld dlci %d\00", align 1
@BT_CONNECTED = common dso_local global i8* null, align 8
@BT_CLOSED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (%struct.rfcomm_session*, i64)* @rfcomm_recv_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_recv_ua(%struct.rfcomm_session* %0, i64 %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %8 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %9 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %7, i32 %10, i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %2
  %16 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %16, i64 %17)
  store %struct.rfcomm_dlc* %18, %struct.rfcomm_dlc** %6, align 8
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %20 = icmp ne %struct.rfcomm_dlc* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @rfcomm_send_dm(%struct.rfcomm_session* %22, i64 %23)
  %25 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  store %struct.rfcomm_session* %25, %struct.rfcomm_session** %3, align 8
  br label %89

26:                                               ; preds = %15
  %27 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %28 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %70 [
    i32 129, label %30
    i32 128, label %52
  ]

30:                                               ; preds = %26
  %31 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %32 = call i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc* %31)
  %33 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %34 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %33)
  %35 = load i8*, i8** @BT_CONNECTED, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %38 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %39, i32 0, i32 2
  %41 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %40, align 8
  %42 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %43 = call i32 %41(%struct.rfcomm_dlc* %42, i32 0)
  %44 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %45 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %44)
  %46 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %49 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rfcomm_send_msc(%struct.rfcomm_session* %46, i32 1, i64 %47, i32 %50)
  br label %70

52:                                               ; preds = %26
  %53 = load i32, i32* @BT_CLOSED, align 4
  %54 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %55 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %57 = call i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc* %56, i32 0)
  %58 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %59 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %58, i32 0, i32 1
  %60 = call i32 @list_empty(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %64 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %63, i32 0, i32 0
  store i32 128, i32* %64, align 4
  %65 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %66 = call i32 @rfcomm_send_disc(%struct.rfcomm_session* %65, i32 0)
  %67 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %68 = call i32 @rfcomm_session_clear_timer(%struct.rfcomm_session* %67)
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %26, %69, %30
  br label %87

71:                                               ; preds = %2
  %72 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %73 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %86 [
    i32 129, label %75
    i32 128, label %82
  ]

75:                                               ; preds = %71
  %76 = load i8*, i8** @BT_CONNECTED, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %79 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %81 = call i32 @rfcomm_process_connect(%struct.rfcomm_session* %80)
  br label %86

82:                                               ; preds = %71
  %83 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %84 = load i32, i32* @ECONNRESET, align 4
  %85 = call %struct.rfcomm_session* @rfcomm_session_close(%struct.rfcomm_session* %83, i32 %84)
  store %struct.rfcomm_session* %85, %struct.rfcomm_session** %4, align 8
  br label %86

86:                                               ; preds = %71, %82, %75
  br label %87

87:                                               ; preds = %86, %70
  %88 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  store %struct.rfcomm_session* %88, %struct.rfcomm_session** %3, align 8
  br label %89

89:                                               ; preds = %87, %21
  %90 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  ret %struct.rfcomm_session* %90
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i64) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_send_dm(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_msc(%struct.rfcomm_session*, i32, i64, i32) #1

declare dso_local i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rfcomm_send_disc(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_session_clear_timer(%struct.rfcomm_session*) #1

declare dso_local i32 @rfcomm_process_connect(%struct.rfcomm_session*) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_close(%struct.rfcomm_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
