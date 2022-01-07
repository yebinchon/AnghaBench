; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c_snd_opl3sa2_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c_snd_opl3sa2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_opl3sa2* }
%struct.snd_opl3sa2 = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@OPL3SA2_IRQ_STATUS = common dso_local global i32 0, align 4
@OPL3SA2_MASTER_RIGHT = common dso_local global i32 0, align 4
@OPL3SA2_MASTER_LEFT = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_opl3sa2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3sa2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.snd_opl3sa2*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.snd_card*
  store %struct.snd_card* %11, %struct.snd_card** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %13 = icmp eq %struct.snd_card* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %18 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %17, i32 0, i32 0
  %19 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %18, align 8
  store %struct.snd_opl3sa2* %19, %struct.snd_opl3sa2** %8, align 8
  %20 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %21 = load i32, i32* @OPL3SA2_IRQ_STATUS, align 4
  %22 = call zeroext i16 @snd_opl3sa2_read(%struct.snd_opl3sa2* %20, i32 %21)
  store i16 %22, i16* %6, align 2
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  %28 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %29 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_opl3_interrupt(i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i16, i16* %6, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %39 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %45 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_mpu401_uart_interrupt(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %42, %37, %32
  %51 = load i16, i16* %6, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %58 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snd_wss_interrupt(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i16, i16* %6, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 64
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  %67 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %68 = load i32, i32* @OPL3SA2_MASTER_RIGHT, align 4
  %69 = call zeroext i16 @snd_opl3sa2_read(%struct.snd_opl3sa2* %67, i32 %68)
  %70 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %71 = load i32, i32* @OPL3SA2_MASTER_LEFT, align 4
  %72 = call zeroext i16 @snd_opl3sa2_read(%struct.snd_opl3sa2* %70, i32 %71)
  %73 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %74 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = icmp ne %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %97

77:                                               ; preds = %66
  %78 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %79 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %84 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %85 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %86 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @snd_ctl_notify(%struct.snd_card* %83, i32 %84, i32* %88)
  %90 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %91 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %92 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %8, align 8
  %93 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @snd_ctl_notify(%struct.snd_card* %90, i32 %91, i32* %95)
  br label %97

97:                                               ; preds = %82, %77, %66
  br label %98

98:                                               ; preds = %97, %61
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @IRQ_RETVAL(i32 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local zeroext i16 @snd_opl3sa2_read(%struct.snd_opl3sa2*, i32) #1

declare dso_local i32 @snd_opl3_interrupt(i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @snd_wss_interrupt(i32, i32) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
