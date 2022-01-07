; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.rfcomm_session = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"dlc %p state %ld %pMR -> %pMR channel %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@RFCOMM_CFC_UNKNOWN = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@RFCOMM_AUTH_PENDING = common dso_local global i32 0, align 4
@RFCOMM_CONN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dlc*, i32*, i32*, i32)* @__rfcomm_dlc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rfcomm_dlc_open(%struct.rfcomm_dlc* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_dlc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rfcomm_session*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %14 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %15 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %13, i64 %16, i32* %17, i32* %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @rfcomm_check_channel(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %135

27:                                               ; preds = %4
  %28 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BT_OPEN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %35 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BT_CLOSED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %135

40:                                               ; preds = %33, %27
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.rfcomm_session* @rfcomm_session_get(i32* %41, i32* %42)
  store %struct.rfcomm_session* %43, %struct.rfcomm_session** %10, align 8
  %44 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %45 = icmp ne %struct.rfcomm_session* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %50 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.rfcomm_session* @rfcomm_session_create(i32* %47, i32* %48, i32 %51, i32* %11)
  store %struct.rfcomm_session* %52, %struct.rfcomm_session** %10, align 8
  %53 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %54 = icmp ne %struct.rfcomm_session* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %135

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %60 = call i32 @__session_dir(%struct.rfcomm_session* %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @__dlci(i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @rfcomm_dlc_get(%struct.rfcomm_session* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %135

70:                                               ; preds = %58
  %71 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %72 = call i32 @rfcomm_dlc_clear_state(%struct.rfcomm_dlc* %71)
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %75 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %77 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @__addr(i32 %78, i32 %79)
  %81 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %82 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %84 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %83, i32 0, i32 1
  store i32 7, i32* %84, align 8
  %85 = load i64, i64* @BT_CONFIG, align 8
  %86 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %87 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %89 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %90 = call i32 @rfcomm_dlc_link(%struct.rfcomm_session* %88, %struct.rfcomm_dlc* %89)
  %91 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %92 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %91, i32 0, i32 2
  store i32 1, i32* %92, align 4
  %93 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %94 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %97 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %99 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @RFCOMM_CFC_UNKNOWN, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %70
  br label %108

104:                                              ; preds = %70
  %105 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %106 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  br label %108

108:                                              ; preds = %104, %103
  %109 = phi i64 [ 0, %103 ], [ %107, %104 ]
  %110 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %111 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %113 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BT_CONNECTED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %108
  %118 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %119 = call i64 @rfcomm_check_security(%struct.rfcomm_dlc* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %123 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %124 = call i32 @rfcomm_send_pn(%struct.rfcomm_session* %122, i32 1, %struct.rfcomm_dlc* %123)
  br label %130

125:                                              ; preds = %117
  %126 = load i32, i32* @RFCOMM_AUTH_PENDING, align 4
  %127 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %128 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %127, i32 0, i32 4
  %129 = call i32 @set_bit(i32 %126, i32* %128)
  br label %130

130:                                              ; preds = %125, %121
  br label %131

131:                                              ; preds = %130, %108
  %132 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %133 = load i32, i32* @RFCOMM_CONN_TIMEOUT, align 4
  %134 = call i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc* %132, i32 %133)
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %67, %55, %39, %24
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i64, i32*, i32*, i32) #1

declare dso_local i64 @rfcomm_check_channel(i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_get(i32*, i32*) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @__dlci(i32, i32) #1

declare dso_local i32 @__session_dir(%struct.rfcomm_session*) #1

declare dso_local i64 @rfcomm_dlc_get(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_dlc_clear_state(%struct.rfcomm_dlc*) #1

declare dso_local i32 @__addr(i32, i32) #1

declare dso_local i32 @rfcomm_dlc_link(%struct.rfcomm_session*, %struct.rfcomm_dlc*) #1

declare dso_local i64 @rfcomm_check_security(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_pn(%struct.rfcomm_session*, i32, %struct.rfcomm_dlc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
