; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"dlc %p dev %p v24_sig 0x%02x\00", align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@RFCOMM_V24_DV = common dso_local global i32 0, align 4
@RFCOMM_V24_RTC = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@RFCOMM_V24_RTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@RFCOMM_V24_IC = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, i32)* @rfcomm_dev_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_modem_status(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_dev*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 0
  %8 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  store %struct.rfcomm_dev* %8, %struct.rfcomm_dev** %5, align 8
  %9 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %10 = icmp ne %struct.rfcomm_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %78

12:                                               ; preds = %2
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %14 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %13, %struct.rfcomm_dev* %14, i32 %15)
  %17 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TIOCM_CD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RFCOMM_V24_DV, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %30 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %29, i32 0, i32 1
  %31 = call i32 @tty_port_tty_hangup(i32* %30, i32 1)
  br label %32

32:                                               ; preds = %28, %23, %12
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @RFCOMM_V24_RTC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @TIOCM_DSR, align 4
  %39 = load i32, i32* @TIOCM_DTR, align 4
  %40 = or i32 %38, %39
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @RFCOMM_V24_RTR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @TIOCM_RTS, align 4
  %50 = load i32, i32* @TIOCM_CTS, align 4
  %51 = or i32 %49, %50
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ]
  %55 = or i32 %43, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @RFCOMM_V24_IC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @TIOCM_RI, align 4
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = or i32 %55, %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @RFCOMM_V24_DV, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @TIOCM_CD, align 4
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %65, %74
  %76 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %77 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %11
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, %struct.rfcomm_dev*, i32) #1

declare dso_local i32 @tty_port_tty_hangup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
