; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.rfcomm_dev = type { %struct.rfcomm_dlc* }
%struct.rfcomm_dlc = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"tty %p dev %p set 0x%02x clear 0x%02x\00", align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@RFCOMM_V24_RTC = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@RFCOMM_V24_RTR = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@RFCOMM_V24_IC = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@RFCOMM_V24_DV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @rfcomm_tty_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfcomm_dev*, align 8
  %8 = alloca %struct.rfcomm_dlc*, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %13, %struct.rfcomm_dev** %7, align 8
  %14 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  %15 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %14, i32 0, i32 0
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %15, align 8
  store %struct.rfcomm_dlc* %16, %struct.rfcomm_dlc** %8, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %17, %struct.rfcomm_dev* %18, i32 %19, i32 %20)
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %8, align 8
  %23 = call i32 @rfcomm_dlc_get_modem_status(%struct.rfcomm_dlc* %22, i32* %9)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TIOCM_DSR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TIOCM_DTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @RFCOMM_V24_RTC, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TIOCM_RTS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TIOCM_CTS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @RFCOMM_V24_RTR, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @TIOCM_RI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @RFCOMM_V24_IC, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @TIOCM_CD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @RFCOMM_V24_DV, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @TIOCM_DSR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @TIOCM_DTR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74, %69
  %80 = load i32, i32* @RFCOMM_V24_RTC, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @TIOCM_RTS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @TIOCM_CTS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @RFCOMM_V24_RTR, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @TIOCM_RI, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @RFCOMM_V24_IC, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @TIOCM_CD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @RFCOMM_V24_DV, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %9, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @rfcomm_dlc_set_modem_status(%struct.rfcomm_dlc* %120, i32 %121)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*, %struct.rfcomm_dev*, i32, i32) #1

declare dso_local i32 @rfcomm_dlc_get_modem_status(%struct.rfcomm_dlc*, i32*) #1

declare dso_local i32 @rfcomm_dlc_set_modem_status(%struct.rfcomm_dlc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
