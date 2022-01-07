; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_sabm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_sabm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i64, i32 }
%struct.rfcomm_dlc = type { i64, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"session %p state %ld dlci %d\00", align 1
@BT_OPEN = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i64)* @rfcomm_recv_sabm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_sabm(%struct.rfcomm_session* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rfcomm_dlc*, align 8
  %7 = alloca i64, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %9 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %10 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %8, i64 %11, i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %2
  %17 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %18 = call i32 @rfcomm_send_ua(%struct.rfcomm_session* %17, i32 0)
  %19 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %20 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BT_OPEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i64, i64* @BT_CONNECTED, align 8
  %26 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %27 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %29 = call i32 @rfcomm_process_connect(%struct.rfcomm_session* %28)
  br label %30

30:                                               ; preds = %24, %16
  store i32 0, i32* %3, align 4
  br label %75

31:                                               ; preds = %2
  %32 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %32, i64 %33)
  store %struct.rfcomm_dlc* %34, %struct.rfcomm_dlc** %6, align 8
  %35 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %36 = icmp ne %struct.rfcomm_dlc* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %39 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BT_OPEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %45 = call i32 @rfcomm_check_accept(%struct.rfcomm_dlc* %44)
  br label %46

46:                                               ; preds = %43, %37
  store i32 0, i32* %3, align 4
  br label %75

47:                                               ; preds = %31
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @__srv_channel(i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @rfcomm_connect_ind(%struct.rfcomm_session* %50, i64 %51, %struct.rfcomm_dlc** %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %57 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %59 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @__addr(i32 %60, i64 %61)
  %63 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %64 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %66 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %67 = call i32 @rfcomm_dlc_link(%struct.rfcomm_session* %65, %struct.rfcomm_dlc* %66)
  %68 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %69 = call i32 @rfcomm_check_accept(%struct.rfcomm_dlc* %68)
  br label %74

70:                                               ; preds = %47
  %71 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @rfcomm_send_dm(%struct.rfcomm_session* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %54
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %46, %30
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i64, i64) #1

declare dso_local i32 @rfcomm_send_ua(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_process_connect(%struct.rfcomm_session*) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_check_accept(%struct.rfcomm_dlc*) #1

declare dso_local i64 @__srv_channel(i64) #1

declare dso_local i64 @rfcomm_connect_ind(%struct.rfcomm_session*, i64, %struct.rfcomm_dlc**) #1

declare dso_local i32 @__addr(i32, i64) #1

declare dso_local i32 @rfcomm_dlc_link(%struct.rfcomm_session*, %struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_dm(%struct.rfcomm_session*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
