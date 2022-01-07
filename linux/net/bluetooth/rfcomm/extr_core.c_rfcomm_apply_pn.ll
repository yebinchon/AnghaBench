; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_apply_pn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_apply_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, i64, i32, i32, i32, i32, i32, %struct.rfcomm_session* }
%struct.rfcomm_session = type { i64, i64 }
%struct.rfcomm_pn = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"dlc %p state %ld dlci %d mtu %d fc 0x%x credits %d\00", align 1
@RFCOMM_CFC_DISABLED = common dso_local global i64 0, align 8
@RFCOMM_CFC_ENABLED = common dso_local global i64 0, align 8
@RFCOMM_TX_THROTTLED = common dso_local global i32 0, align 4
@RFCOMM_CFC_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dlc*, i32, %struct.rfcomm_pn*)* @rfcomm_apply_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_apply_pn(%struct.rfcomm_dlc* %0, i32 %1, %struct.rfcomm_pn* %2) #0 {
  %4 = alloca %struct.rfcomm_dlc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_pn*, align 8
  %7 = alloca %struct.rfcomm_session*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rfcomm_pn* %2, %struct.rfcomm_pn** %6, align 8
  %8 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %9 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %8, i32 0, i32 7
  %10 = load %struct.rfcomm_session*, %struct.rfcomm_session** %9, align 8
  store %struct.rfcomm_session* %10, %struct.rfcomm_session** %7, align 8
  %11 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %12 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %13 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %19 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %22 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %25 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BT_DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %29 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 240
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.rfcomm_session*, %struct.rfcomm_session** %7, align 8
  %34 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RFCOMM_CFC_DISABLED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32, %3
  %39 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %40 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 224
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %32
  %44 = load i64, i64* @RFCOMM_CFC_ENABLED, align 8
  %45 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %46 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %48 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %51 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  br label %60

52:                                               ; preds = %38
  %53 = load i64, i64* @RFCOMM_CFC_DISABLED, align 8
  %54 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %55 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %57 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %58 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %57, i32 0, i32 3
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %52, %43
  %61 = load %struct.rfcomm_session*, %struct.rfcomm_session** %7, align 8
  %62 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RFCOMM_CFC_UNKNOWN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %68 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rfcomm_session*, %struct.rfcomm_session** %7, align 8
  %71 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %74 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %77 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %6, align 8
  %79 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @__le16_to_cpu(i32 %80)
  %82 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %83 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %72
  %87 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %88 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.rfcomm_session*, %struct.rfcomm_session** %7, align 8
  %91 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.rfcomm_session*, %struct.rfcomm_session** %7, align 8
  %96 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %99 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %86, %72
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
