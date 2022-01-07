; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_dm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i64 }
%struct.rfcomm_dlc = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"session %p state %ld dlci %d\00", align 1
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (%struct.rfcomm_session*, i64)* @rfcomm_recv_dm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_recv_dm(%struct.rfcomm_session* %0, i64 %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %8 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %9 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %7, i64 %10, i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %16, i64 %17)
  store %struct.rfcomm_dlc* %18, %struct.rfcomm_dlc** %6, align 8
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %20 = icmp ne %struct.rfcomm_dlc* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %23 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BT_CONNECT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BT_CONFIG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @ECONNRESET, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i64, i64* @BT_CLOSED, align 8
  %39 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc* %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %15
  br label %59

45:                                               ; preds = %2
  %46 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %47 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BT_CONNECT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @ECONNRESET, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call %struct.rfcomm_session* @rfcomm_session_close(%struct.rfcomm_session* %56, i32 %57)
  store %struct.rfcomm_session* %58, %struct.rfcomm_session** %3, align 8
  br label %59

59:                                               ; preds = %55, %44
  %60 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  ret %struct.rfcomm_session* %60
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i64, i64) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc*, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_close(%struct.rfcomm_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
