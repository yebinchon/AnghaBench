; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_azf3328 = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@snd_azf3328_interrupt.irq_count = internal global i64 0, align 8
@IDX_IO_IRQSTATUS = common dso_local global i32 0, align 4
@IRQ_PLAYBACK = common dso_local global i32 0, align 4
@IRQ_RECORDING = common dso_local global i32 0, align 4
@IRQ_I2S_OUT = common dso_local global i32 0, align 4
@IRQ_GAMEPORT = common dso_local global i32 0, align 4
@IRQ_MPU401 = common dso_local global i32 0, align 4
@IRQ_TIMER = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"irq_count %ld! IDX_IO_IRQSTATUS %04x\0A\00", align 1
@IDX_IO_TIMER_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"timer IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MPU401 IRQ\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_azf3328_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_azf3328*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snd_azf3328*
  store %struct.snd_azf3328* %9, %struct.snd_azf3328** %6, align 8
  %10 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %11 = load i32, i32* @IDX_IO_IRQSTATUS, align 4
  %12 = call i32 @snd_azf3328_ctrl_inb(%struct.snd_azf3328* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IRQ_PLAYBACK, align 4
  %15 = load i32, i32* @IRQ_RECORDING, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IRQ_I2S_OUT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IRQ_GAMEPORT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IRQ_MPU401, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IRQ_TIMER, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %13, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %120

29:                                               ; preds = %2
  %30 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %31 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @snd_azf3328_interrupt.irq_count, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @snd_azf3328_interrupt.irq_count, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IRQ_TIMER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %29
  %44 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %45 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %50 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %49, i32 0, i32 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %53 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %52, i32 0, i32 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_timer_interrupt(%struct.TYPE_6__* %51, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %60 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %59, i32 0, i32 3
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %63 = load i64, i64* @IDX_IO_TIMER_VALUE, align 8
  %64 = add nsw i64 %63, 3
  %65 = call i32 @snd_azf3328_ctrl_outb(%struct.snd_azf3328* %62, i64 %64, i32 7)
  %66 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %67 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %66, i32 0, i32 3
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %70 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %58, %29
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @IRQ_PLAYBACK, align 4
  %78 = load i32, i32* @IRQ_RECORDING, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IRQ_I2S_OUT, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %76, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %86 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %87 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @snd_azf3328_pcm_interrupt(%struct.snd_azf3328* %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %75
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @IRQ_GAMEPORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %98 = call i32 @snd_azf3328_gameport_interrupt(%struct.snd_azf3328* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @IRQ_MPU401, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %107 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @snd_mpu401_uart_interrupt(i32 %105, i32 %110)
  %112 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %113 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @dev_dbg(i32 %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %104, %99
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %27
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @snd_azf3328_ctrl_inb(%struct.snd_azf3328*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_timer_interrupt(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_azf3328_ctrl_outb(%struct.snd_azf3328*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_azf3328_pcm_interrupt(%struct.snd_azf3328*, i32, i32) #1

declare dso_local i32 @snd_azf3328_gameport_interrupt(%struct.snd_azf3328*) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
