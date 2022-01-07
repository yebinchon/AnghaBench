; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@CM_REG_INT_STATUS = common dso_local global i32 0, align 4
@CM_INTR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CM_CHINT0 = common dso_local global i32 0, align 4
@CM_CH0_INT_EN = common dso_local global i32 0, align 4
@CM_CHINT1 = common dso_local global i32 0, align 4
@CM_CH1_INT_EN = common dso_local global i32 0, align 4
@CM_REG_INT_HLDCLR = common dso_local global i32 0, align 4
@CM_UARTINT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_cmipci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cmipci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cmipci*
  store %struct.cmipci* %10, %struct.cmipci** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %12 = load i32, i32* @CM_REG_INT_STATUS, align 4
  %13 = call i32 @snd_cmipci_read(%struct.cmipci* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @CM_INTR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  %21 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %22 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %21, i32 0, i32 3
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CM_CHINT0, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @CM_CH0_INT_EN, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @CM_CHINT1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @CM_CH1_INT_EN, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %43 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %42, i32 %43, i32 %44)
  %46 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %47 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %46, i32 %47, i32 %48)
  %50 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %51 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %50, i32 0, i32 3
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %54 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CM_UARTINT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %65 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snd_mpu401_uart_interrupt(i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %62, %57, %41
  %71 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %72 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %118

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @CM_CHINT0, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %82 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %90 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @snd_pcm_period_elapsed(i32 %94)
  br label %96

96:                                               ; preds = %88, %80, %75
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @CM_CHINT1, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %103 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %111 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @snd_pcm_period_elapsed(i32 %115)
  br label %117

117:                                              ; preds = %109, %101, %96
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %18
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
