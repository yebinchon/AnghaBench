; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sk_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sk_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, i32, %struct.sock* }
%struct.sock = type { i32, i64, i32 (%struct.sock*)*, i32 (%struct.sock*)* }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"dlc %p state %ld err %d\00", align 1
@BT_CLOSED = common dso_local global i64 0, align 8
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, i32)* @rfcomm_sk_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_sk_state_change(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %9 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %8, i32 0, i32 2
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = icmp ne %struct.sock* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %100

14:                                               ; preds = %2
  %15 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %15, i64 %18, i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call i32 @bh_lock_sock(%struct.sock* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %14
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %33 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.sock*, %struct.sock** %39, align 8
  store %struct.sock* %40, %struct.sock** %6, align 8
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = icmp ne %struct.sock* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %31
  %44 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %45 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BT_CLOSED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = load i32, i32* @SOCK_ZAPPED, align 4
  %52 = call i32 @sock_set_flag(%struct.sock* %50, i32 %51)
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = call i32 @bt_accept_unlink(%struct.sock* %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 3
  %58 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %57, align 8
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = call i32 %58(%struct.sock* %59)
  br label %81

61:                                               ; preds = %31
  %62 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %63 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BT_CONNECTED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %69 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @rfcomm_session_getaddr(i32 %70, i32* %73, i32* null)
  br label %75

75:                                               ; preds = %67, %61
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 2
  %78 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %77, align 8
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = call i32 %78(%struct.sock* %79)
  br label %81

81:                                               ; preds = %75, %55
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = call i32 @bh_unlock_sock(%struct.sock* %82)
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @local_irq_restore(i64 %84)
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = icmp ne %struct.sock* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load %struct.sock*, %struct.sock** %5, align 8
  %90 = load i32, i32* @SOCK_ZAPPED, align 4
  %91 = call i64 @sock_flag(%struct.sock* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %95 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %94)
  %96 = load %struct.sock*, %struct.sock** %5, align 8
  %97 = call i32 @rfcomm_sock_kill(%struct.sock* %96)
  %98 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %99 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %98)
  br label %100

100:                                              ; preds = %13, %93, %88, %81
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i64, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_accept_unlink(%struct.sock*) #1

declare dso_local i32 @rfcomm_session_getaddr(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_sock_kill(%struct.sock*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
